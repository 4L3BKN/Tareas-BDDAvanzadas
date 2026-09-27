USE actors;

-- 1. Laura Bailey (EEUU, 42)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11, 'Laura Bailey', 'EEUU', '1981-05-28', 42, 5000000.0, ['Inglés', 'Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 42, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11, 'Laura Bailey');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11, 'principal', 120, 'Jaina Proudmoore', 'World of Warcraft', 'profesional', ['Fantasía', 'Acción']);
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11, 'principal', 85, 'Abby Anderson', 'The Last of Us Part II', 'profesional', ['Drama', 'Supervivencia']);

-- 2. Troy Baker (EEUU, 48)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22, 'Troy Baker', 'EEUU', '1976-04-01', 48, 6000000.0, ['Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 48, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22, 'Troy Baker');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22, 'principal', 200, 'Joel Miller', 'The Last of Us', 'profesional', ['Acción', 'Drama']);
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22, 'secundario', 45, 'Joker', 'Batman: Arkham Origins', 'profesional', ['Acción']);

-- 3. Mario Castañeda (México, 61)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33, 'Mario Castañeda', 'México', '1962-06-29', 61, 3500000.0, ['Español', 'Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 61, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33, 'Mario Castañeda');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33, 'principal', 500, 'Goku', 'Dragon Ball Z', 'profesional', ['Anime', 'Acción']);

-- 4. René García (México, 54)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a44, 'René García', 'México', '1970-03-12', 54, 2800000.0, ['Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 54, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a44, 'René García');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a44, 'principal', 450, 'Vegeta', 'Dragon Ball Z', 'profesional', ['Anime', 'Acción']);

-- 5. Rie Takahashi (Japón, 30)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a55, 'Rie Takahashi', 'Japón', '1994-02-27', 30, 2000000.0, ['Japonés', 'Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 30, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a55, 'Rie Takahashi');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a55, 'principal', 36, 'Megumin', 'KonoSuba', 'profesional', ['Comedia', 'Fantasía']);

-- 6. Mamoru Miyano (Japón, 40)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a66, 'Mamoru Miyano', 'Japón', '1983-06-08', 40, 4500000.0, ['Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 40, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a66, 'Mamoru Miyano');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a66, 'principal', 37, 'Light Yagami', 'Death Note', 'profesional', ['Misterio', 'Thriller']);

-- 7. Tara Strong (Canadá, 51)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a77, 'Tara Strong', 'Canadá', '1973-02-12', 51, 10000000.0, ['Inglés', 'Francés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Canadá', 51, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a77, 'Tara Strong');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a77, 'principal', 150, 'Raven', 'Teen Titans', 'profesional', ['Animación', 'Acción']);

-- 8. Cristina Hernández (México, 46)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a88, 'Cristina Hernández', 'México', '1977-02-13', 46, 1800000.0, ['Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 46, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a88, 'Cristina Hernández');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a88, 'principal', 70, 'Sakura Kinomoto', 'Sakura Cardcaptor', 'profesional', ['Anime']);

-- 9. Takehito Koyasu (Japón, 56)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a99, 'Takehito Koyasu', 'Japón', '1967-05-05', 56, 3000000.0, ['Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 56, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a99, 'Takehito Koyasu');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a99, 'principal', 180, 'Dio Brando', 'JoJo’s Bizarre Adventure', 'profesional', ['Anime', 'Acción']);

-- 10. Nolan North (EEUU, 53)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380baa, 'Nolan North', 'EEUU', '1970-10-31', 53, 4000000.0, ['Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 53, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380baa, 'Nolan North');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380baa, 'principal', 110, 'Nathan Drake', 'Uncharted', 'profesional', ['Aventura']);

-- 11. Humberto Vélez (México, 68)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bbb, 'Humberto Vélez', 'México', '1955-03-30', 68, 2200000.0, ['Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 68, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bbb, 'Humberto Vélez');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bbb, 'principal', 350, 'Homero Simpson', 'Los Simpson', 'profesional', ['Comedia']);

-- 12. Yuri Lowenthal (EEUU, 53)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bcc, 'Yuri Lowenthal', 'EEUU', '1971-03-05', 53, 3200000.0, ['Inglés', 'Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 53, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bcc, 'Yuri Lowenthal');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bcc, 'principal', 220, 'Peter Parker', 'Marvel Spider-Man', 'profesional', ['Acción']);

-- 13. Kana Hanazawa (Japón, 35)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bdd, 'Kana Hanazawa', 'Japón', '1989-02-25', 35, 5000000.0, ['Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 35, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bdd, 'Kana Hanazawa');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bdd, 'principal', 24, 'Kanade Tachibana', 'Angel Beats!', 'profesional', ['Drama', 'Anime']);

-- 14. Grey DeLisle (EEUU, 50)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bee, 'Grey DeLisle', 'EEUU', '1973-08-24', 50, 5000000.0, ['Inglés', 'Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 50, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bee, 'Grey DeLisle');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bee, 'principal', 60, 'Azula', 'Avatar: El último maestro del aire', 'profesional', ['Animación']);

-- 15. Romina Marroquín (México, 42)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bff, 'Romina Marroquín', 'México', '1981-03-16', 42, 1200000.0, ['Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 42, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bff, 'Romina Marroquín');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380bff, 'principal', 15, 'Anna', 'Frozen', 'profesional', ['Infantil']);

-- 16. Yuki Kaji (Japón, 38)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c11, 'Yuki Kaji', 'Japón', '1985-09-03', 38, 4100000.0, ['Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 38, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c11, 'Yuki Kaji');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c11, 'principal', 88, 'Eren Yeager', 'Attack on Titan', 'profesional', ['Acción', 'Anime']);

-- 17. Jennifer Hale (Canadá, 59)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c22, 'Jennifer Hale', 'Canadá', '1965-01-30', 59, 2500000.0, ['Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Canadá', 59, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c22, 'Jennifer Hale');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c22, 'principal', 90, 'Commander Shepard (Female)', 'Mass Effect', 'profesional', ['Ciencia Ficción']);

-- 18. Isabel Martiñón (México, 63)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c33, 'Isabel Martiñón', 'México', '1961-03-20', 63, 1500000.0, ['Español']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('México', 63, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c33, 'Isabel Martiñón');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c33, 'principal', 700, 'Naruto Uzumaki', 'Naruto', 'profesional', ['Anime']);

-- 19. Tomokazu Sugita (Japón, 43)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c44, 'Tomokazu Sugita', 'Japón', '1980-10-11', 43, 3800000.0, ['Japonés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('Japón', 43, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c44, 'Tomokazu Sugita');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c44, 'principal', 350, 'Gintoki Sakata', 'Gintama', 'profesional', ['Comedia', 'Anime']);

-- 20. Steve Blum (EEUU, 63)
INSERT INTO actores (id, nombre, nacionalidad, fecha_nacimiento, edad, patrimonio_estimado, idiomas) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c55, 'Steve Blum', 'EEUU', '1960-04-29', 63, 4800000.0, ['Inglés']);
INSERT INTO actores_por_nacionalidad (nacionalidad, edad, id, nombre) 
VALUES ('EEUU', 63, a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c55, 'Steve Blum');
INSERT INTO personajes_por_actor (actor_id, rol, apariciones, nombre_personaje, produccion, tipo_produccion, generos) 
VALUES (a0eebc99-9c0b-4ef8-bb6d-6bb9bd380c55, 'principal', 26, 'Spike Spiegel', 'Cowboy Bebop', 'profesional', ['Anime']);