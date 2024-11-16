-- POPULACIÓN DE TABLAS

-- MASCOTA
INSERT INTO MASCOTA (tipo) VALUE ("Gato"), ("Perro"), ("Gorrion");


-- GRUPO
INSERT INTO GRUPO (nombre) VALUE ('datamasters'), ('nullpointer'), ('Enrutados'), ('Mandarina'), 
('MCTeam'), ('okupas'), ('undefined'), ('DropTable'), ('DreamTeam');

-- HOBBY
INSERT INTO HOBBY (nombre) VALUE ('Musica'), ('Viajes'), ('Videojuegos'), ('Lectura'), 
('Series y Peliculas'), ('Deportes'), ('Dibujo'), ('Carpinteria'), ('Jardineria'), 
('Redes Sociales'), ('Fotografía'), ('Electronica');

-- ROL
INSERT INTO ROL (nombre, descripcion) VALUE 
('Organizador', 'subdividir y repartir tareas al equipo / trabajar'), 
('Representante', 'comunicación y entrega de actividades al equipo docente / trabajar'), 
('Team Leader', 'organizar al equipo para reunirse y participar / trabajar'), 
('Lider Tecnico', 'aporte de información esencial para el trabajo / trabajar'), 
('Supervisor', 'asegurar que todos cumplan sus funciones / trabajar');

-- LOCALIDAD
INSERT INTO LOCALIDAD (NOMBRE) VALUES ('San Martin'), ('Jose Leon Suarez'), ('Pacheco'), ('CABA'),
('San Andres'), ('Santos Lugares'), ('Escobar'), ('Villa Ballester'), ('Villa Bosch'), ('El Palomar'),
('Ciudad Jardin'), ('Loma Hermosa'), ('Laferrere'), ('Chilavert'), ('Florida');

-- TRABAJO
INSERT INTO TRABAJO (NOMBRE) VALUES ('Frontend'), ('Freelancer'), ('Finanzas'), ('Data analytics'), 
('Backend'), ('Seguros'), ('Desarrollador aplicaciones'), ('IT'), ('Ciberseguridad'), ('Comercio'), 
('Desarrollador RPA'), ('Otros'), ('Docente');

-- MATERIA
INSERT INTO MATERIA (codigo, nombre) VALUES ('CM_001','Electricidad y Magnetismo'),('CM_002','Matemática I'),
('CM_003','Laboratorio de Computación I'),('CM_004','Laboratorio de Computación II'),
('CM_005','Sistemas de Procesamiento de Datos'),('CM_006','Matemática II'),('CM_007','Algoritmos I'),
('CM_008','Conceptos de Arquitecturas y Sistemas Operativos'), ('CM_009','Matemática III'),
('CM_010','Algoritmos II'),('CM_011','Redes Locales'),('CM_012','Métodos Numéricos'), ('CM_013','Algoritmos III'),
('CM_014','Bases de Datos'), ('CM_015','Seminario de Programación'),
('CM_016','Programación con Herramientas Modernas'),('CM_017','Proyectos de Software'),
('CM_018','Paradigmas de Programación');

-- INTEGRANTE
INSERT INTO INTEGRANTE (id_integrante, dni, nombre, apellido, email, id_trabajo, id_localidad, recomendacion) VALUES 
(1, 37688075, 'Jotallan', 'Calvetti', 'gaabicarp@gmail.com', 1,  1, 'Rock nacional.'),
(2, 41472398, 'Mariel Nadine', 'Kovinchich', 'marielkov1998@gmail.com', 2, 2, 'Me gusta desde rock nacional hasta bandas sonoras de series o videojuegos.'),
(3, 38532025, 'gaston ezequiel', 'Abelardo', 'gabelardo@estudiantes.unsam.edu.ar', 3,  1, 'Me gusta los ritmos tropicales'),
(4, 40663606, 'Rodrigo Nicolas', 'Pavon Gomez', 'rodrigopavongomez@gmail.com', 1,  NULL, 'Mi hobbie es jugar y entrenar voley, estoy en el mixto de la Unsam.'),
(5, 38601662, NULL, 'Dragonetti', 'mdragonetti@estudiantes.unsam.edu.ar', 1, 1, 'musica de todo un poco'),
(6, 44547586, 'Juan Ignacio', 'Caceffo', 'jicaceffo@estudiantes.unsam.edu.ar', 4, 3, 'Wos'),
(7, 37984582, NULL, 'Gibelli', 'juligibelli@gmail.com', 5,  4, 'Serie: supernatural. Musica: arctic monkeys, radiohead'),
(8, 35972409, 'Emiliano Javier', 'Nuñez', 'ejnunez@estudiantes.unsam.edu.ar', 6,  NULL, 'me gusta bandas como foofighters'),
(9, 43036494, 'Alejo', 'Menini', 'amenini@estudiantes.unsam.edu.ar', 4,  5, 'the boys y the bear'),
(10, 35726203, 'Facundo', 'Barneche', 'fh.barneche@gmail.com', 1,  6, 'Recomiendo cuarteto pero me gusta todo'),(11, 43245286, 'Valentino', 'Bortolussi', 'valentino.bortolussi.lembo@gmail.com', NULL, 7, 'Recomiendo Queen.'),
(12, 42647332, 'Santiago', 'Bouza', 'sbouza@estudiantes.unsam.edu.ar', NULL, 7, NULL),
(13, 38703368, 'Cristian', 'Lomas', 'cristian.lomas.a@gmail.com', 7,  NULL, NULL),
(14, 42472348, 'Tomás', 'Neiro', 'tomasneiro@hotmail.com', 8, 4, 'Y musica top 50 spoty.'),
(15, 37626822, NULL, 'Villafañez Sobrecasa', 'ccvillafanezsobrecasa@estudiantes.unsam.edu.ar', 5,  4, NULL),
(16, 41067566, 'Maximiliano', 'Borrelli', 'maxifborrelli@gmail.com', 5, 8, NULL),
(17, 44792981, 'Theo', 'Narmontas Bocci', 'narmontastheo@gmail.com', NULL, NULL, 'elden ring, dragon ball y jojo´s mis favoritos'),
(18, 95822280, 'Paola', 'Toledo Contreras', 'ptoledocontreras@estudiantes.unsam.edu.ar', 5,  4, 'Actualmente veo de vuelta la telenovela original "Soy Betty La Fea" y al mismo tiempo que la nueva temporada, la cual me ha traído grandes decepciones'),
(19, 35993466, 'Matias Hernan', 'Diaz', 'diaz.matiash@gmail.com', 7, 6, NULL),
(20, 42321002, 'Annabella', 'Pagano', 'apagano@estudiantes.unsam.edu.ar', 9, 1, 'Musica los piojos y serie "NADA".'),
(21, 40007189, 'Gabriel', 'Tarquini', 'gabi.tarquini@gmail.com', 10,  9, 'No miro muchas series, pero actualmente estoy con The Office.'),
(22, 39800551, 'Valentin Pedro', 'Fucceneco', 'vfuccenecco@estudiantes.unsam.edu.ar', 10, 1, 'Musica rock nacional. Serie recomendada The Boys'),
(23, 41106994, 'Agustina', 'Rey Brienza', 'a.reybrienza@gmail.com', 11,  10, 'Y serie recomiendo una de las últimas que vi que se llama "El Oso".'),
(24, 43781315, 'Emiliano', 'Decuzzi', 'eadecuzzi@estudiantes.unsam.edu.ar', 8,  11, NULL),
(25, 44160355, 'Tatiana', 'Sabbatini', 'tsabbatini@estudiantes.unsam.edu.ar', 8,  4, NULL),
(26, 40395042, NULL, 'Ruina', 'mjruina@estudiantes.unsam.edu.ar', NULL, NULL, NULL),
(27, 41684308, 'Lautaro', 'Cuellar', 'lautacuellar69@hotmail.com', 12,  12, NULL),
(28, 43017353, 'Federico', 'Virgilio', 'fedevirgili00@gmail.com', 8,  1, NULL),
(29, 42291365, 'Alan', 'Exarchos', 'alanexarchos@gmail.com', NULL,  9, NULL),
(30, 45105469, NULL, 'Rossi', 'flrossi@estudiantes.unsam.edu.ar', 8, 4, 'Musica Miranda! y serie The Office.'),
(31, NULL, 'Ernesto', 'Davogustto', 'ernesto.davogustto@gmail.com', 4, 4, NULL),
(32, 45174406, 'Lucas Gonzalo', 'Rodriguez', 'lgrodriguez@estudiantes.unsam.edu.ar', NULL,  8, NULL),
(33, 39916775, 'Alan', 'Guarino', 'aguarino@estudiantes.unsam.edu.ar', 10,  8, NULL),
(34, 35766192, 'Tamara Eleonor', 'Mecozzi', 'mecozzite@gmail.com', 12, 1, NULL),
(35, NULL, 'Agustin', 'Hoj', 'ahoj@estudiantes.unsam.edu.ar', 8, 8, NULL),
(36, 35093145, 'Matias', 'Caballero', 'msebacaballero@gmail.com', 12, 13, 'Pelea de gallos'),
(37, 36594617, 'David', 'Pazos', 'davidgpazos@gmail.com', 9, 4, NULL),
(38, 43441575, 'Fabrizio', 'Signorello', 'fsignorello@estudiantes.undam.edu.ar', 5, 8, NULL),
(39, 42997600, 'Andrés Elias', 'Simonini', 'aesimonini@estudiantes.unsam.edu.ar', NULL, 12, 'Serie Arcane'),
(40, 35205248, 'Emiliano', 'Ferretti', 'emieferretti@gmail.com', 12, 6, NULL),
(41, 41555134, NULL, 'Perez', 'amperez@estudiantes.unsam.edu.ar', 13,  8, 'Series recomendadas Dark o Black Mirror'),
(42, 41548103, 'Delfina', 'Borrelli', 'dborrelli@estudiantes.unsam.edu.ar', 10, NULL, NULL),
(43, 42101048, 'Pedro', 'Geraghty', 'pedrogeraghty82@gmail.com', 12,  4, 'The Office y Better Call Saul'),
(44, 36791436, 'Diego', 'Lentz', 'digoolentz@gmail.com', 10, 14, NULL),
(45, 44553142, NULL, 'Pugliese', 'valentinpugliesew@outlook.com', 8, NULL, NULL),
(46, NULL, 'Pablo', 'Nuñez Monzon', 'pnunezmonzon@unsam.edu.ar', 13, NULL, NULL),
(47, 32438510, 'Denise', 'Martin', 'dmmartin@unsam.edu.ar', 13, 4, NULL),
(48, 44514481, 'Diego', 'Mirarchi', 'dhmirarchi@estudiantes.unsam.edu.ar', 13, 15, NULL);

-- DOCENTE
INSERT INTO DOCENTE (id_integrante) VALUES (46), (47), (48);

-- ESTUDIANTE
INSERT INTO ESTUDIANTE (id_integrante, db_relacional, db_no_relacional) VALUES 
(1, true, true), (2, true, false), (3, false, false), (4, false, false), (5, false, false), 
(6, true, true), (7, true, true), (8, true, false), (9, true, false), (10, true, true), 
(11, false, false), (12, false, false), (13, true, true), (14, false, false), (15, true, false), 
(16, true, true), (17, false, false), (18, true, false), (19, true, false), (20, true, false), 
(21, false, false), (22, false, false), (23, false, false), (24, true, false), (25, false, false), 
(26, true, true), (27, false, false), (28, false, false), (29, true, false), (30, false, false), 
(31, true, true), (32, false, false), (33, false, false), (34, false, false), (35, false, false), 
(36, false, false), (37, false, false), (38, true, false), (39, false, false), (40, false, false),
(41, false, false), (42, false, false), (43, false, false), (44, true, false), (45, false, false);

-- ESTUDIANTE_GRUPO_ROL
INSERT INTO ESTUDIANTE_GRUPO_ROL (id_estudiante, id_grupo, id_rol) VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),
(6,2,4),(7,2,1),(8,2,2),(9,2,5),(10,2,3),(11,3,5),(12,3,4),(13,3,2),(14,3,1),(15,3,3),(16,4,4),(17,4,1),(18,4,2),
(19,4,5),(20,4,3),(21,5,4),(22,5,1),(23,5,2),(24,5,5),(25,5,3),(26,6,4),(27,6,1),(28,6,2),(29,6,5),(30,6,3),
(31,7,4),(32,7,2),(33,7,5),(34,7,3),(35,7,1),(36,8,4),(37,8,1),(38,8,2),(39,8,5),(40,8,3),(41,9,4),(42,9,1),
(43,9,2),(44,9,5),(45,9,3);

-- MASCOTA_INTEGRANTE
INSERT INTO MASCOTA_INTEGRANTE (id_integrante, id_mascota, cantidad) VALUES (2, 2, 1), (3, 2, 1), 
(4, 1, 3), (4, 2, 2), (5, 1, 1), (5, 2, 1), (6, 1, 2), (6, 2, 1), (10, 1, 1), (11, 2, 1), (12, 1, 3), 
(13, 1, 3), (14, 2, 2), (16, 2, 1), (20, 1, 2), (20, 2, 1), (21, 1, 1), (21, 2, 2), (22, 1, 2), 
(23, 2, 2), (27, 1, 1), (29, 2, 1), (30, 2, 1), (31, 2, 1), (32, 2, 1), (33, 2, 3), (34, 1, 3), (34, 2, 2), 
(35, 2, 1), (36, 2, 2), (38, 2, 3), (38, 1, 5), (39, 1, 2), (39, 2, 1), (40, 2, 2), (41, 1, 3), (41, 2, 3), 
(42, 1, 2), (43, 1, 2), (43, 2, 1), (44, 1, 1), (46, 2, 1), (47, 3, 2), (48, 2, 1);

-- ESTUDIANTE_MATERIA
INSERT INTO ESTUDIANTE_MATERIA (id_estudiante, id_materia) VALUES (1, 14), (2, 13), (2, 14), (3, 13), 
(3, 14), (4, 14), (4, 15), (5, 14), (5, 15), (6, 14), (7, 14), (7, 15), (8, 14), (8, 15), (9, 14), 
(10, 14), (10, 15), (11, 13), (11, 14), (11, 15), (12, 13), (12, 14), (12, 15), (13, 13), (13, 14), 
(13, 15), (14, 13), (14, 14), (14, 15), (15, 14), (16, 13), (16, 14), (17, 13), (17, 14), (17, 15), 
(18, 14), (19, 13), (19, 14), (19, 15), (20, 8), (20, 14), (21, 13), (21, 14), (22, 13), (22, 14), 
(23, 13), (23, 14), (24, 13), (24, 14), (24, 15), (25, 13), (25, 14), (25, 15), (26, 13), (26, 14), 
(26, 15), (27, 13), (27, 14), (27, 15), (28, 13), (28, 14), (28, 15), (29, 14), (29, 15), (30, 13), 
(30, 14), (30, 15), (31, 13), (31, 14), (31, 15), (32, 13), (32, 14), (32, 15), (33, 13), (33, 14), 
(33, 15), (34, 13), (34, 14), (34, 15), (35, 13), (35, 14), (36, 14), (37, 8), (37, 14), (38, 13), 
(38, 14), (39, 13), (39, 14), (40, 13), (40, 14), (41, 13), (41, 14), (41, 15), (42, 13), (42, 14), 
(42, 15), (43, 13), (43, 14), (44, 13), (44, 14), (44, 15), (45, 13), (45, 14);

-- HOBBY_INTEGRANTE
INSERT INTO HOBBY_INTEGRANTE (id_integrante, id_hobby) VALUES 
(1, 1), (1, 2), (1, 3), (2, 1), (2, 4), (2, 5), (3, 1), (4, 6), (5, 1), (5, 4), (6, 1), (6, 6), (7, 4),
(7, 6), (7, 7), (8, 1), (9, 5), (9, 6), (10, 1), (10, 6), (11, 6), (12, 4), (13, 4), (13, 6), (13, 9), 
(14, 4), (14, 6), (15, 5), (16, 6), (17, 4), (17, 5), (17, 6), (18, 1), (18, 4), (18, 5), (20, 9), 
(20, 10), (21, 6), (22, 1), (22, 5), (23, 1), (23, 6), (24, 3), (24, 6), (25, 1), (25, 4), (25, 6), 
(26, 1), (27, 1), (27, 6),(29, 3), (29, 5), (30, 1), (30, 5), (31, 1), (31, 6), (31, 11),(32, 1), (32, 5), 
(33, 3), (34, 2), (34, 5), (34, 6), (35, 3), (35, 6), (36, 1), (37, 6), (38, 6), (39, 3), (39, 7), 
(40, 1), (40, 6), (41, 4), (43, 6), (44, 3), (44, 6), (45, 3), (45, 6),(46, 1), (46, 5), (46, 6), 
(46, 11),(47, 3), (47, 4), (47, 8), (47, 9), (48, 3), (48, 5), (48, 6), (48,12);

-- DOCENTE_MATERIA
INSERT INTO DOCENTE_MATERIA (id_docente, id_materia) VALUES (46,14), (47,14), (48,14);















