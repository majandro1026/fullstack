// objetos

const producto = {
    nombreProducto : "Monitor",
    precio : 300,
    disponible: true,
}

// acceso a elementos del objeto

// console.log(producto.precio)
// console.log(producto["nombreProducto"])

// agregar propiedades

producto.imagen = "imagen.jpg"

//eliminar propiedades

delete producto.disponible;
console.log(producto)
