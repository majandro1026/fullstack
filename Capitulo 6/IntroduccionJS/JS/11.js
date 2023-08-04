// objetos

const producto = {
    nombreProducto : "Monitor",
    precio : 300,
    disponible: true,
}

//crear una variable a partir de un atributo de un objeto

//foarma anterior
const precio_producto = producto.precio;


//forma nueva
//Destructuring

const {precio, disponible} = producto;
console.log(precio);
console.log(disponible);
