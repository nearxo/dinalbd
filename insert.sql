-- TipoContacto
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('1', 'DIR Direccion');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('2', 'OFI Direccion Of.');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('3', 'TEL Telefono Fijo');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('4', 'TEO Telefono Ofi.');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('5', 'CEL Celular');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('6', 'LIK Linkedin');
INSERT INTO TipoContacto (idTipoContacto, descTipoContacto) VALUES ('7', 'WHA WathsApp');

-- TipoCargo
INSERT INTO TipoCargo (idTipoCargo, descTipoCargo) VALUES ('1', 'Analista Cliente');
INSERT INTO TipoCargo (idTipoCargo, descTipoCargo) VALUES ('2', 'Analista General');
INSERT INTO TipoCargo (idTipoCargo, descTipoCargo) VALUES ('3', 'Analista Sicolog.');
INSERT INTO TipoCargo (idTipoCargo, descTipoCargo) VALUES ('4', 'Analista Conoc.');
INSERT INTO TipoCargo (idTipoCargo, descTipoCargo) VALUES ('5', 'Analista Tecnol.');

-- TipoItemPerfil
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0001', 'Estudios Tecnicos');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0002', 'Estudios Tecnolog.');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0003', 'Estudios Pregrado');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0004', 'Estudios Postgrad.');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0005', 'Estudios Doctoral.');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0006', 'Estudios No Form.');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0007', 'Practicas Emp.');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0008', 'Idiomas');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0009', 'Voluntariado');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0010', 'Empleado');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0011', 'Contratista');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0012', 'Pub. No indexada');
INSERT INTO TipoItemPerfil (idTipoItemPerfil, descTipoItemPerfil) VALUES ('0013', 'Publicacion Index.');

-- Perfil
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('1', 'Directivo Superior');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('2', 'Directivo Medio');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('3', 'Directivo Base');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('4', 'Profesional Senior');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('5', 'Profesional Semi sr.');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('6', 'Profesional Junior');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('7', 'Tecnologo c/Exp.');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('8', 'Tecnologo');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('9', 'Tecnico c/Exp.');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('10', 'Tecnico');
INSERT INTO Perfil (idPerfil, descPerfil) VALUES ('11', 'Bachiller');

-- Fase
INSERT INTO Fase (idFase, DESFASE) VALUES ('1', 'Registrar Req.');
INSERT INTO Fase (idFase, DESFASE) VALUES ('2', 'Asignar Perfil');
INSERT INTO Fase (idFase, DESFASE) VALUES ('3', 'Publicar Conv.');
INSERT INTO Fase (idFase, DESFASE) VALUES ('4', 'Mandar Invitacion');
INSERT INTO Fase (idFase, DESFASE) VALUES ('5', 'Preseleccion');
INSERT INTO Fase (idFase, DESFASE) VALUES ('6', 'Realizar Prueba');
INSERT INTO Fase (idFase, DESFASE) VALUES ('7', 'Entrevista');
INSERT INTO Fase (idFase, DESFASE) VALUES ('8', 'Fase Final');

-- diciplina
-- Asegúrate de que la tabla diciplina existe antes de insertar
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('1', 'Computacion');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('2', 'Administracion');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('3', 'Quimica');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('4', 'Biologia');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('5', 'Odontologia');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('6', 'Medicina');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('7', 'Sociologia');
INSERT INTO diciplina (iddiciplina, descdiciplina) VALUES ('8', 'Medicina');

-- TipoPrueba
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('01', 'Prueba Conoc. I');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('02', 'Prueba Conoc. II');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('03', 'Prueba Especial.');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('04', 'Prueba Sicologica');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('05', 'Prueba Grupal');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('06', 'Prueba Tecnol. I');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('07', 'Prueba Tecnol. II');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('08', 'Prueba Tecnologica');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('09', 'Prueba Tecnol. Esp.');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('10', 'Prueba Ingles');
INSERT INTO TipoPrueba (idTipoPrueba, descTipoPrueba) VALUES ('11', 'Prueba Seguridad');

-- TipoPregunta
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('1', 'Abierta');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('2', 'Seleccion Multiple');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('3', 'Seleccion unica');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('4', 'Falso/Verdadero');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('5', 'Completar');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('6', 'Ubicar');
INSERT INTO TipoPregunta (idTipoPregunta, descTipoPregunta) VALUES ('7', 'Emparejar');

-- FaseCargo
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (1, '1', '1');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (2, '2', '2');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (3, '3', '2');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (4, '4', '2');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (5, '5', '2');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (6, '6', '2');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (7, '7', '4');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (8, '8', '3');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (9, '7', '3');
INSERT INTO FaseCargo (conseFaseCargo, idFase, idTipoCargo) VALUES (10, '8', '3');

-- Prueba
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00001', '1', '1', NULL, '01', 'Prueba Conoc. II', 1, SYSDATE);
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00002', '2', '2', NULL, '02', 'Gestion Proyectos', 1, SYSDATE);
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00003', '3', '3', NULL, '01', 'Prueba Conoc. I', 1, SYSDATE);
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00004', '4', '4', NULL, '01', 'Bases de Datos', 1, SYSDATE);
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00005', '5', '5', NULL, '01', 'PruebaTecnologia II', 1, SYSDATE);
INSERT INTO Prueba (idPrueba, idFase, iddiciplina, consecProceso, idTipoPrueba, descPrueba, pruebaActiva, fechaCreada) VALUES ('00006', '6', '6', NULL, '01', 'Excel Analistica', 1, SYSDATE);

-- PerfilFase
INSERT INTO PerfilFase (idPerfil, idFase) VALUES ('1', '1');
INSERT INTO PerfilFase (idPerfil, idFase) VALUES ('4', '1');
INSERT INTO PerfilFase (idPerfil, idFase) VALUES ('7', '1');
INSERT INTO PerfilFase (idPerfil, idFase) VALUES ('10', '1');

-- Pregunta
INSERT INTO Pregunta (consecPregunta, idPrueba, descPregunta, idTipoPregunta) VALUES (1, '00001', 'Conoc. I BD Pregunta 1', '1');
INSERT INTO Pregunta (consecPregunta, idPrueba, descPregunta, idTipoPregunta) VALUES (2, '00001', 'Conoc. I BD Pregunta 2', '4');
INSERT INTO Pregunta (consecPregunta, idPrueba, descPregunta, idTipoPregunta) VALUES (3, '00001', 'Conoc. I BD Pregunta 3', '3');

-- Respuesta
INSERT INTO Respuesta (consecRespuesta, consecPregunta, respuesta) VALUES (1, 1, 'Pregunta 1 Respuesta 1');
INSERT INTO Respuesta (consecRespuesta, consecPregunta, respuesta) VALUES (2, 2, 'F');
INSERT INTO Respuesta (consecRespuesta, consecPregunta, respuesta) VALUES (3, 3, 'Única 3');

-- TipoItemPerfil
