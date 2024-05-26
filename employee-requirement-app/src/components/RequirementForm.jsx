import React, { useState } from 'react';
import axios from 'axios';

const RequirementForm = () => {
    const [codigoEmpleado, setCodigoEmpleado] = useState('');
    const [desFuncion, setDesFuncion] = useState('');
    const [desCarreras, setDesCarreras] = useState('Computación');
    const [vacantes, setVacantes] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        const fechaReque = new Date().toISOString();
        try {
            const response = await axios.post('/requerimientos', { codigoEmpleado, fechaReque, desFuncion, desCarreras, vacantes });
            alert(response.data.message);
        } catch (err) {
            console.error('Error:', err);
            alert('Error registering requirement');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h1>Register Requirement</h1>
            <label>
                Employee Code:
                <input type="text" value={codigoEmpleado} onChange={(e) => setCodigoEmpleado(e.target.value)} required />
            </label>
            <label>
                Function Description:
                <input type="text" value={desFuncion} onChange={(e) => setDesFuncion(e.target.value)} required />
            </label>
            <label>
                Possible Careers:
                <input type="text" value={desCarreras} readOnly />
            </label>
            <label>
                Vacancies:
                <input type="number" value={vacantes} onChange={(e) => setVacantes(e.target.value)} required />
            </label>
            <button type="submit">Register Requirement</button>
        </form>
    );
};

export default RequirementForm;
