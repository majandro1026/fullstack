"use strict" // correr JS en modo estricto

const producto = {
    nombreProducto : "Monitor",
    precio : 300,
    disponible: true,
}

Object.freeze(producto); // permite congelar los objetos para no agregarle mas propiedades
// Object.seal(producto); // Seal no permite agregar o eliminar atributos pero si se pueden modificar los existentes

producto.imagen = "imagen.jpg"

console.log(producto);