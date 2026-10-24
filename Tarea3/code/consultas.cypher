//Consultas de verificación

// Verificación versión de GDS
RETURN gds.version() AS versionGDS;

//Verificación subida archivo .dump

// Conteo estudiantes
MATCH (e:Estudiante) RETURN count(e) AS estudiantes;

// Conteo casas
MATCH (c:Casa) RETURN count(c) AS casas;

// Conteo relaciones
MATCH (:Estudiante)-[r:PIDIO_DULCES]->(:Casa) RETURN count(r) AS visitas;



//Parte 1. Exploración y consultas Cypher

// Vista grafo completo
MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c:Casa) RETURN e, r, c;

// Casas más visitadas
MATCH (c:Casa)
OPTIONAL MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c)
RETURN c.id, c.direccion AS Direccion, count(r) AS TotalVisitas
ORDER BY TotalVisitas DESC, Direccion ASC;

// Estudiante con más dulces
MATCH (e:Estudiante)
OPTIONAL MATCH (e)-[r:PIDIO_DULCES]->(c:Casa)
RETURN e.id AS Nombre, 
       count(r) AS TotalVisitas, 
       coalesce(sum(r.cantidad), 0) AS TotalDulces
ORDER BY TotalDulces DESC, TotalVisitas DESC, Nombre ASC;

// Visitas sin dulces
MATCH (e:Estudiante)-[r:PIDIO_DULCES]->(c:Casa)
WHERE r.cantidad = 0
RETURN e.id AS Nombre, c.direccion AS Direccion, r.tipo AS TipoDulce;

// Cantidad visita sin dulces
MATCH ()-[r:PIDIO_DULCES]->()
WHERE r.cantidad = 0
RETURN count(r) AS VisitasSinDulces;