const express = require('express');
const oracledb = require('oracledb');
const bodyParser = require('body-parser');

oracledb.initOracleClient({ libDir: 'E:\\ora\\instantclient_11_2' });

const app = express();
const port = 3000;

app.use(express.static('public'));
app.use(bodyParser.json());

app.post('/empleados', async (req, res) => {
    let connection;
    try {
        connection = await oracledb.getConnection({
            user: 'finalbd',
            password: 'finalbd',
            connectString: 'localhost:1521/XE'
        });

        const { nombre, cargo, email } = req.body; // Ajustar según los campos necesarios
        const query = `INSERT INTO EMPLEADOS (nombre, cargo, email) VALUES (:nombre, :cargo, :email)`;
        const result = await connection.execute(query, [nombre, cargo, email], { autoCommit: true });

        res.status(200).json({ message: 'Empleado registrado exitosamente' });
    } catch (err) {
        console.error('Error ejecutando query:', err);
        res.status(500).send(err.message);
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                console.error('Error cerrando conexión:', err);
            }
        }
    }
});

app.post('/requerimientos', async (req, res) => {
    let connection;
    try {
        connection = await oracledb.getConnection({
            user: 'finalbd',
            password: 'finalbd',
            connectString: 'localhost:1521/XE'
        });

        const { codigoEmpleado, desFuncion, desCarreras, vacantes } = req.body;
        const fechaReque = new Date().toISOString();
        const query = `INSERT INTO REQUERIMIENTOS (codigoEmpleado, fechaReque, desFuncion, desCarreras, vacantes) VALUES (:codigoEmpleado, :fechaReque, :desFuncion, :desCarreras, :vacantes)`;
        const result = await connection.execute(query, [codigoEmpleado, fechaReque, desFuncion, desCarreras, vacantes], { autoCommit: true });

        res.status(200).json({ message: 'Requerimiento registrado exitosamente' });
    } catch (err) {
        console.error('Error ejecutando query:', err);
        res.status(500).send(err.message);
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                console.error('Error cerrando conexión:', err);
            }
        }
    }
});
/*
*/
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
