-- Insert requirements with computing discipline and specific profiles
INSERT INTO Requerimiento (consecReque, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 100000, 70000, 'Desarrollo de Software', 'Computación', 1);
INSERT INTO Requerimiento (consecReque, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (2, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 120000, 80000, 'Analista de Sistemas', 'Computación', 1);
INSERT INTO Requerimiento (consecReque, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (3, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 150000, 100000, 'Gestión de Proyectos', 'Computación', 1);

-- Insert requirements
INSERT INTO Requerimiento (consecReque, codEmpleado, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (1, 'EMP01', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 100000, 70000, 'Desarrollo de Software', 'Computación', 1);

INSERT INTO Requerimiento (consecReque, codEmpleado, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (2, 'EMP02', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 120000, 80000, 'Analista de Sistemas', 'Computación', 1);

INSERT INTO Requerimiento (consecReque, codEmpleado, fechaReque, salarioMax, salarioMin, desFuncion, desCarreras, nVacante)
VALUES (3, 'EMP03', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 150000, 100000, 'Gestión de Proyectos', 'Computación', 1);
