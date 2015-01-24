--Usuarios
--id bigint generated by default as identity (start with 1),
--alias varchar(255),
--contrasenia varchar(255),
--edad bigint not null,
--email varchar(255),
--latitud double not null,
--longitud double not null,
--nombre varchar(255),
--rol varchar(255),
--salt varchar(255),
--valoracion varbinary(255),


--ejecucion maven : mvn compile hibernate3:hbm2ddl
--CONTRASEÑAS:0
--1.admin -> admin
--2.rusopo -> 12345
--3.test1 -> admin
--4.manuel -> freire

INSERT into Usuario values(1,'admin','4e472a2779abd6d6571c76b0f845cb5d20e084e7', 34, 'admin@gmail.com',44.2, 44.3, 'Administrador','administrador','8d6ebca8c2f3bca1336d778fffcfc941', NULL);
INSERT into Usuario values(2,'rusopo','d16b254da3bab8814357b2566ba2bc988c266b21', 23, 'ruben@gmail.com',40.4312585, -3.7102769000000535, 'Ruben','usuario','008c483eb1bcc2d4c54babc9bc04cfd2', NULL);
INSERT into Usuario values(3,'test1','935b09d31e97ce2cd6222084b30a01cdff91c6bc', 33, 'test@gmail.com',40.4312585, -3.7102769000000535, 'Test','usuario','5795fce1d232e7ceaf777deeb8171600', NULL);
INSERT into Usuario values(4,'manuel','a29e7a225f6e9d55b1b009f296d4143c18d13018',32,'manuelfreire@gmail.com',40.452807689244956,-3.733441060852101,'Manuel Freire','usuario','b175386dabcdb205311112cda6bac27d',NULL);


--CATEGORIA
--id_categoria bigint generated by default as identity (start with 1),
--nombreCategoria varchar(255),

INSERT INTO Categoria VALUES(1,'TODAS');
INSERT INTO Categoria VALUES(2,'Informatica');
INSERT INTO Categoria VALUES(3,'Limpieza');
INSERT INTO Categoria VALUES(4,'Mudanzas');
INSERT INTO Categoria VALUES(5,'Otros');

--SERVICIO
--id_servicio bigint generated by default as identity (start with 1),
--contadorUsuarios bigint not null,
--descripcion varchar(255),
--nombre varchar(255),
--categoria_id_categoria bigint,


INSERT INTO Servicio VALUES(1,3,'Experto en lenguaje de programacion Java','Programacion JAVA',2);
INSERT INTO Servicio VALUES(2,2,'Conocimiento de montaje y desmontaje de ordenadores','Tecnico informatico',2);
INSERT INTO Servicio VALUES(3,2,'Capacidad de limpiar por completo una casa','Limpiador/a de hogar',3);
INSERT INTO Servicio VALUES(4,1,'Limpiador de cristales con experiencia','Limpiacristales',3);
INSERT INTO Servicio VALUES(5,2,'Experto de mudanzas de todo tipo','Ayudante de mudanzas',4);
INSERT INTO Servicio VALUES(6,1,'Montaje y desmontaje de muebles','Des/Montamuebles',5);

--HABILIDADES_USUARIO
--ID_usuario bigint not null,
--ID_servicio bigint not null

INSERT INTO habilidadesUsuario VALUES(1,2);
INSERT INTO habilidadesUsuario VALUES(1,3);
INSERT INTO habilidadesUsuario VALUES(2,1);
INSERT INTO habilidadesUsuario VALUES(2,4);
INSERT INTO habilidadesUsuario VALUES(2,5);
INSERT INTO habilidadesUsuario VALUES(3,1);
INSERT INTO habilidadesUsuario VALUES(3,6);
INSERT INTO habilidadesUsuario VALUES(4,1);
INSERT INTO habilidadesUsuario VALUES(4,3);
INSERT INTO habilidadesUsuario VALUES(4,5);


--INTERESES_USUARIO
--ID_usuario bigint not null,
--ID_servicio bigint not null

INSERT INTO interesesUsuario VALUES(1,1);
INSERT INTO interesesUsuario VALUES(1,5);
INSERT INTO interesesUsuario VALUES(2,2);
INSERT INTO interesesUsuario VALUES(2,3);
INSERT INTO interesesUsuario VALUES(2,6);
INSERT INTO interesesUsuario VALUES(3,3);
INSERT INTO interesesUsuario VALUES(4,2);
INSERT INTO interesesUsuario VALUES(4,4);
INSERT INTO interesesUsuario VALUES(4,6);


----NEGOCIACION
--id_negociacion bigint generated by default as identity (start with 1),
--aceptada bit not null,
--usuario1_id bigint,
--usuario2_id bigint,
INSERT INTO Negociacion VALUES(1,false,2,4);
INSERT INTO Negociacion VALUES(2,false,2,4);
INSERT INTO Negociacion VALUES(3,false,2,4);
INSERT INTO Negociacion VALUES(4,false,4,2);
--
----OFERTA
--id_oferta_enviada bigint generated by default as identity (start with 1),
--negociacion_id_negociacion bigint,
--servicio_ofrecido_id_servicio bigint,
--servicio_solicitado_id_servicio bigint,
--usuarioEnvia_id bigint,
--usuarioRecibe_id bigint,

INSERT INTO Oferta VALUES(1,1,1,4,4,2);
INSERT INTO Oferta VALUES(2,2,2,3,4,2);
INSERT INTO Oferta VALUES(3,3,3,2,4,2);
INSERT INTO Oferta VALUES(4,4,2,3,2,4);


----COMENTARIO
--id_comentario bigint generated by default as identity (start with 1),
--texto_comentario varchar(255),
--id_usuario_id bigint,
--negociacion_id_negociacion bigint,
--INSERT INTO Comentario VALUES(1,'Hola Manuel',2,1);
--INSERT INTO Comentario VALUES(2,'Hola Ruben',4,1);







