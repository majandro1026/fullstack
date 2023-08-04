const producto = {
    nombreProducto : "Monitor",
    precio : 300,
    disponible: true,
}

const medidas ={
    peso: "1kg",
    medida:"1m"
}

const nuevoProducto = {...producto,...medidas}; // unir objetos

console.log(producto);
console.log(nuevoProducto);