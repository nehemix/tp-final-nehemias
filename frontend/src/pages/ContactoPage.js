import '../styles/ContactoPage.css'
import React, { useState } from 'react';
import axios from 'axios';
const ContactoPage = (props) => {

    const initialForm = {
        nombre: '',
        email: '',
        telefono: '',
        mensaje: ''
    }

    const [sending, setSending] = useState(false);
    const [msg, setMsg] = useState('');
    const [formData, setFormData] = useState(initialForm);

    const handleChange = e => {
        const { name, value } = e.target;
        setFormData(oldData => ({
            ...oldData,
            [name]: value
        }));
}

const handleSubmit = async e => {
    e.preventDefault();
    setMsg('');
    setSending(true)
    const response = await
    axios.post('http://localhost:3000/api/contacto', formData);
    setSending(false);
    setMsg(response.data.message);
    if (response.data.error === false) {
        setFormData(initialForm)
    }
}


    return (
        <div class="container-contacto">
            <h1 class="h1-contacto">Contactanos</h1>
            <form action="action_page.php" onSubmit={handleSubmit}>

                <label for="fname">Nombre</label>
                <input type="text" id="fname" name="nombre" value={formData.nombre} onChange={handleChange} placeholder="Tu nombre.." />

                <label for="lname">Mail</label>
                <input type="email" id="lname" name="email" value={formData.email} onChange={handleChange} placeholder="Tu mail.." />

                <label for="lname">Teléfono</label>
                <input type="number" id="lname" name="telefono" value={formData.telefono} onChange={handleChange} placeholder="Tu teléfono.." />

                <label for="subject">Mensaje</label>
                <textarea id="subject" name="mensaje" value={formData.mensaje} onChange={handleChange} placeholder="Escribe tu mensaje.." style={{ height: '200px' }}></textarea>

                <input type="submit" value="Enviar" />

            </form>
            {sending ? <p>Enviando..</p> : null}
            {msg ? <p>{msg}</p> : null}
        </div>
    )
}
export default ContactoPage