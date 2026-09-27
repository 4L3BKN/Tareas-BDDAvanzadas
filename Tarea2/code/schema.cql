-- Creación del Keyspace
CREATE KEYSPACE IF NOT EXISTS actors
WITH replication = {
    'class': 'NetworkTopologyStrategy',
    'datacenter1': 3
};

USE actors;

-- Tabla 1: Consulta 1 - Obtener un actor por identificador único
CREATE TABLE IF NOT EXISTS actores (
    id uuid,
    nombre text,
    nacionalidad text,
    fecha_nacimiento date,
    edad int,
    patrimonio_estimado double,
    idiomas list<text>,
    PRIMARY KEY (id)
);

-- Tabla 2: Consulta 2 - Consultar actores de una nacionalidad ordenados por edad
CREATE TABLE IF NOT EXISTS actores_por_nacionalidad (
    nacionalidad text,
    edad int,
    id uuid,
    nombre text,
    PRIMARY KEY (nacionalidad, edad, id)
) WITH CLUSTERING ORDER BY (edad ASC, id ASC);

-- Tabla 3: Consulta 3 - Obtener personajes de un actor considerando rol y ordenados por apariciones
CREATE TABLE IF NOT EXISTS personajes_por_actor (
    actor_id uuid,
    rol text,
    apariciones int,
    nombre_personaje text,
    produccion text,
    tipo_produccion text,
    generos list<text>,
    PRIMARY KEY (actor_id, rol, apariciones, nombre_personaje)
) WITH CLUSTERING ORDER BY (rol ASC, apariciones DESC, nombre_personaje ASC);