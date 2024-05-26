import React, { useState } from 'react';
import axios from 'axios';

const EmployeeForm = () => {
    const [codEmpleado, setCodEmpleado] = useState('');
    const [nomEmpleado, setNomEmpleado] = useState('');
    const [apellidoEmpleado, setApellidoEmpleado] = useState('');
    const [fechaNac, setFechaNac] = useState('');
    const [fechaIngre, setFechaIngre] = useState('');
    const [fechaEgreso, setFechaEgreso] = useState('');
    const [correo, setCorreo] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            const response = await axios.post('/empleados', { 
                codEmpleado, 
                nomEmpleado, 
                apellidoEmpleado, 
                fechaNac, 
                fechaIngre, 
                fechaEgreso, 
                correo 
            });
            alert(response.data.message);
        } catch (err) {
            console.error('Error:', err);
            alert('Error registering employee');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h1>Register Employee</h1>
            <label>
                Employee Code:
                <input type="text" value={codEmpleado} onChange={(e) => setCodEmpleado(e.target.value)} required />
            </label>
            <label>
                First Name:
                <input type="text" value={nomEmpleado} onChange={(e) => setNomEmpleado(e.target.value)} required />
            </label>
            <label>
                Last Name:
                <input type="text" value={apellidoEmpleado} onChange={(e) => setApellidoEmpleado(e.target.value)} required />
            </label>
            <label>
                Date of Birth:
                <input type="date" value={fechaNac} onChange={(e) => setFechaNac(e.target.value)} required />
            </label>
            <label>
                Date of Joining:
                <input type="date" value={fechaIngre} onChange={(e) => setFechaIngre(e.target.value)} required />
            </label>
            <label>
                Date of Exit:
                <input type="date" value={fechaEgreso} onChange={(e) => setFechaEgreso(e.target.value)} />
            </label>
            <label>
                Email:
                <input type="email" value={correo} onChange={(e) => setCorreo(e.target.value)} required />
            </label>
            <button type="submit">Register Employee</button>
        </form>
    );
};

export default EmployeeForm;
