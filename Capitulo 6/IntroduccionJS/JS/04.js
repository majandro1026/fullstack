const producto = "Monitor de 20 pulgadas" //string o cadena de texto
const producto2 = "Monitor HD"
const producto3 = new String("Monitor de 50 pulgadas")
const tweet = "Aprendiendo JavaScript con el curso de Desarrollo Web Completo"

console.log(producto.length);
console.log(tweet.length)
// console.log(typeof producto3); //funcion typeof para conocer el tipo de variable

// IndexOf ----> buscar en una cadena de texto y devuelve la posicion en la que inicia
console.log(tweet.indexOf('JavaScript'))

//Includes() (retorna True or False)
console.log(tweet.includes('JavaScript'))