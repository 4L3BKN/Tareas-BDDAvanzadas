// =====================================================================
// Tarea 3: Neo4j y análisis de grafos - INF325 Bases de Datos Avanzadas
// Base utilizada: neo4j (cargada desde tarea.dump)
// Ejecutar cada consulta por separado, en el orden en que aparecen.
// =====================================================================


// =====================================================================
// Set Up: verificación de GDS y de la carga
// =====================================================================

// Versión de GDS
RETURN gds.version() AS versionGDS;

// Conteo de estudiantes (esperado: 15)
MATCH (e:Estudiante)
RETURN count(e) AS estudiantes;

// Conteo de casas (esperado: 10)
MATCH (c:Casa)
RETURN count(c) AS casas;

// Conteo de visitas (esperado: 75)
MATCH (:Estudiante)-[r:PIDIO_DULCES]->(:Casa)
RETURN count(r) AS visitas;


// =====================================================================
// Parte 1: Exploración y consultas Cypher
// =====================================================================

// 1.1 Visualización del grafo completo
MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c:Casa)
RETURN e, r, c;

// 1.2 Ranking de casas por número de visitas (incluye casas con 0 visitas)
MATCH (c:Casa)
OPTIONAL MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c)
RETURN c.id, c.direccion AS Direccion, count(r) AS TotalVisitas
ORDER BY TotalVisitas DESC, Direccion ASC;

// 1.2 Casas empatadas en el máximo de visitas
MATCH (c:Casa)
OPTIONAL MATCH (:Estudiante)-[r:PIDIO_DULCES]->(c)
WITH c, count(r) AS totalVisitas
WITH collect({id: c.id, direccion: c.direccion, visitas: totalVisitas}) AS casas,
     max(totalVisitas) AS maximo
UNWIND casas AS casa
WITH casa, maximo
WHERE casa.visitas = maximo
RETURN casa.id AS id, casa.direccion AS direccion, casa.visitas AS totalVisitas
ORDER BY direccion;

// 1.3 Ranking de estudiantes por total de dulces (suma de cantidad)
MATCH (e:Estudiante)
OPTIONAL MATCH (e)-[r:PIDIO_DULCES]->(c:Casa)
RETURN e.id AS Nombre,
       count(r) AS TotalVisitas,
       coalesce(sum(r.cantidad), 0) AS TotalDulces
ORDER BY TotalDulces DESC, TotalVisitas DESC, Nombre ASC;

// 1.3 Estudiantes empatados en el máximo de dulces
MATCH (e:Estudiante)
OPTIONAL MATCH (e)-[r:PIDIO_DULCES]->(:Casa)
WITH e, coalesce(sum(r.cantidad), 0) AS totalDulces
WITH collect({nombre: e.id, dulces: totalDulces}) AS estudiantes,
     max(totalDulces) AS maximo
UNWIND estudiantes AS est
WITH est, maximo
WHERE est.dulces = maximo
RETURN est.nombre AS nombre, est.dulces AS totalDulces
ORDER BY nombre;

// 1.4 Visitas sin dulces (cantidad = 0)
MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c:Casa)
WHERE r.cantidad = 0
RETURN e.id AS Nombre, c.direccion AS Direccion, r.tipo AS TipoDulce;

// 1.4 Cantidad de visitas sin dulces
MATCH ()-[r:PIDIO_DULCES]->()
WHERE r.cantidad = 0
RETURN count(r) AS VisitasSinDulces;

// 1.4 Total de visitas sin dulces y porcentaje sobre las 75 visitas
MATCH (:Estudiante)-[r:PIDIO_DULCES]->(:Casa)
WITH count(r) AS totalVisitas,
     sum(CASE WHEN r.cantidad = 0 THEN 1 ELSE 0 END) AS visitasSinDulces
RETURN visitasSinDulces,
       totalVisitas,
       round(100.0 * visitasSinDulces / totalVisitas, 2) AS porcentaje;


// =====================================================================
// Parte 2: Análisis con GDS
// =====================================================================

// 2.1 Proyección del grafo (esperado: 25 nodos, 75 relaciones)
CALL gds.graph.project(
  'halloween',
  ['Estudiante', 'Casa'],
  {PIDIO_DULCES: {orientation: 'NATURAL'}}
)
YIELD graphName, nodeCount, relationshipCount
RETURN graphName, nodeCount, relationshipCount;

// 2.2 Degree Centrality: grado de entrada de cada casa (REVERSE)
// Se filtra por :Casa después de ejecutar el algoritmo.
CALL gds.degree.stream('halloween', {
  orientation: 'REVERSE'
})
YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS nodo, score
WHERE nodo:Casa
RETURN nodo.id AS id, nodo.direccion AS direccion, score AS visitasRecibidas
ORDER BY visitasRecibidas DESC, direccion ASC;

// 2.3 Node Similarity (Jaccard): top 5 parejas distintas
CALL gds.nodeSimilarity.stream('halloween', {
  similarityMetric: 'JACCARD',
  topK: 14,
  similarityCutoff: 0.0001
})
YIELD node1, node2, similarity
WITH gds.util.asNode(node1).id AS estudiante1,
     gds.util.asNode(node2).id AS estudiante2,
     similarity
WHERE estudiante1 < estudiante2
RETURN estudiante1, estudiante2, similarity
ORDER BY similarity DESC, estudiante1 ASC, estudiante2 ASC
LIMIT 5;

// 2.3 Casas que visitaron ambos estudiantes de la pareja elegida (Isidora, Nicolás)
MATCH (a:Estudiante {id: 'Isidora'})-[r1:PIDIO_DULCES]->(c:Casa)<-[r2:PIDIO_DULCES]-(b:Estudiante {id: 'Nicolás'})
RETURN c.id AS id, c.direccion AS casa,
       r1.cantidad AS dulcesIsidora, r1.tipo AS tipoIsidora,
       r2.cantidad AS dulcesNicolas, r2.tipo AS tipoNicolas
ORDER BY c.id;

// 2.3 Cálculo manual de Jaccard para la pareja elegida
MATCH (a:Estudiante {id: 'Isidora'})-[:PIDIO_DULCES]->(c:Casa)
WITH collect(c.direccion) AS casasA
MATCH (b:Estudiante {id: 'Nicolás'})-[:PIDIO_DULCES]->(c2:Casa)
WITH casasA, collect(c2.direccion) AS casasB
WITH casasA, casasB, [x IN casasA WHERE x IN casasB] AS comunes
RETURN size(comunes) AS interseccion,
       size(casasA) + size(casasB) - size(comunes) AS union,
       toFloat(size(comunes)) / (size(casasA) + size(casasB) - size(comunes)) AS jaccardManual;


// =====================================================================
// Parte 3: Búsqueda de caminos
// =====================================================================

// 3.1 Casas compartidas: patrón completo (ver en vista Graph)
MATCH p = (a:Estudiante {id: 'Isidora'})-[:PIDIO_DULCES]->(c:Casa)<-[:PIDIO_DULCES]-(b:Estudiante {id: 'Nicolás'})
RETURN p;

// 3.2 Camino más corto (la dirección se ignora solo para recorrer)
MATCH (a:Estudiante {id: 'Isidora'}),
      (b:Estudiante {id: 'Nicolás'})
OPTIONAL MATCH p = shortestPath(
  (a)-[:PIDIO_DULCES*1..24]-(b)
)
RETURN p, length(p) AS longitud,
       [n IN nodes(p) | coalesce(n.direccion, n.id)] AS recorrido;


// =====================================================================
// Parte 4: Cierre
// =====================================================================

// 4.2 Liberar la proyección (solo elimina la proyección en memoria)
CALL gds.graph.drop('halloween', false)
YIELD graphName
RETURN graphName;

// 4.2 Comprobar que ya no existe (esperado: exists = false)
CALL gds.graph.exists('halloween')
YIELD exists
RETURN exists;
