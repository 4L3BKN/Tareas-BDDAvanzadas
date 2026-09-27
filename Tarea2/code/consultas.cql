-- Query 1 Búsqueda por clave de partición
SELECT nombre, nacionalidad, edad, idiomas 
FROM actores
WHERE id = a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33;

-- Query 2 Consulta por nacionalidad
SELECT nombre, edad, nacionalidad 
FROM actores_por_nacionalidad 
WHERE nacionalidad = 'Japón' 
LIMIT 10;

-- Query 3 Consulta de personajes
SELECT nombre_personaje, produccion, tipo_produccion, rol, apariciones 
FROM personajes_por_actor 
WHERE actor_id = a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11 
  AND rol = 'principal' 
LIMIT 10;

-- Query 4 LIMIT y ordenamiento
SELECT nombre, edad 
FROM actores_por_nacionalidad 
WHERE nacionalidad = 'EEUU' 
LIMIT 5;

-- Query 5 Sin clave apropiada sin ALLOW FILTERING
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE nacionalidad = 'México' AND edad = 61;

-- Query 6 Sin clave apropiada con ALLOW FILTERING
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE nacionalidad = 'México' AND edad = 61 
ALLOW FILTERING;

-- Creación indice Nacionalidad en actores
CREATE CUSTOM INDEX nacionalidad_idx 
ON actores (nacionalidad) 
USING 'sai';

-- Creación indice Edad en actores
CREATE CUSTOM INDEX edad_idx
ON actores (edad)
USING 'sai';

-- Query 7 Uso de indice nacionalidad en actores
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE nacionalidad = 'México'
LIMIT 10;

-- Query 8 Uso de índice edad en actores
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE edad >= 31
LIMIT 10;

-- Query 9 Uso de indices nacionalidad y edad en actores
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE nacionalidad = 'Japón' AND edad <= 60
LIMIT 10;

-- Creación indice de idiomas en actores
CREATE CUSTOM INDEX idiomas_idx 
ON actores (values(idiomas)) 
USING 'sai';

-- Query 10 Uso de indice idiomas
SELECT nombre, nacionalidad, idiomas 
FROM actores 
WHERE idiomas CONTAINS 'Español'
LIMIT 10;

-- Query 11 Consulta tabla hecha para nacionalidad
SELECT nombre, nacionalidad, edad 
FROM actores_por_nacionalidad 
WHERE nacionalidad = 'México'
LIMIT 10;

-- Query 12 Consulta tabla actores usando indice nacionalidad
SELECT nombre, nacionalidad, edad 
FROM actores 
WHERE nacionalidad = 'México'
LIMIT 10;