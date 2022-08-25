import '../styles/ContactoPage.css'
import React, { useState, useEffect } from "react"
import axios from "axios";
import BlogItem from "../components/blog/BlogItem";

const BlogPage = (props) => {
    const [loading, setLoading] = useState(false);
    const [blog, setBlog] = useState([]);

    useEffect(() => {
        const cargarBlog = async () => {
            setLoading(true);
            const response = await axios.get('http://localhost:3000/api/blog');
            setBlog(response.data);
            setLoading(false);
        };
        cargarBlog();
    }, []);

    return (
        <section className="holder-blog">
            <h2 className='h2-blog'>Noticias</h2>
            {loading ? (
                <p>Cargando...</p>
            
            ) : (
                blog.map(item => <BlogItem key={item.id}
                    title={item.titulo} subtitle={item.subtitulo}
                    imagen={item.imagen} body={item.cuerpo} />)
            )}
        </section>
    )
}


export default BlogPage