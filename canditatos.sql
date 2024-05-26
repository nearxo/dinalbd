-- Candidates with computing and postgraduate studies
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('ggmarquez', 'Gabriel', 'Garcia Marquez', TO_DATE('1927-03-06', 'YYYY-MM-DD'), 1001);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('pneruda', 'Pablo', 'Neruda', TO_DATE('1904-07-12', 'YYYY-MM-DD'), 1002);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('jlborges', 'Jorge Luis', 'Borges', TO_DATE('1899-08-24', 'YYYY-MM-DD'), 1003);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('mvllosa', 'Mario', 'Vargas Llosa', TO_DATE('1936-03-28', 'YYYY-MM-DD'), 1004);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('ialende', 'Isabel', 'Allende', TO_DATE('1942-08-02', 'YYYY-MM-DD'), 1005);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('opaz', 'Octavio', 'Paz', TO_DATE('1914-03-31', 'YYYY-MM-DD'), 1006);

-- Candidates with other backgrounds
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('cfuentes', 'Carlos', 'Fuentes', TO_DATE('1928-11-11', 'YYYY-MM-DD'), 1007);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('jcortazar', 'Julio', 'Cortazar', TO_DATE('1914-08-26', 'YYYY-MM-DD'), 1008);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('rdario', 'Ruben', 'Dario', TO_DATE('1867-01-18', 'YYYY-MM-DD'), 1009);
INSERT INTO Candidato (usuario, nombre, apellido, fechaNac, nDoc) VALUES ('jmarti', 'Jose', 'Marti', TO_DATE('1853-01-28', 'YYYY-MM-DD'), 1010);

-- HV for candidates with computing and postgraduate studies
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (1, 'ggmarquez', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Profesional Senior');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (2, 'pneruda', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Profesional Semi sr');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (3, 'jlborges', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Profesional Junior');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (4, 'mvllosa', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Directivo Base');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (5, 'ialende', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Tecnologo');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (6, 'opaz', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Computacion', 'Tecnico');

-- HV for candidates with other backgrounds
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (7, 'cfuentes', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Administracion', 'Directivo Medio');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (8, 'jcortazar', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Quimica', 'Directivo Superior');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (9, 'rdario', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Biologia', 'Directivo Base');
INSERT INTO HV (consecHV, usuario, fechaIniAct, fechaFinAct, descActividad, funcionActividad) VALUES (10, 'jmarti', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Odontologia', 'Tecnologo c/Exp.');
