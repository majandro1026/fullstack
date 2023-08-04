// Arrays o arreglos

const numeros = [10, 20, 30, 40, 50];

const meses = new Array("enero", "Febrero", "Marzo", "Abril","Mayo")    


// Acceder a los elementos de un array

console.log(numeros[4]);

numeros.forEach(function(numeros){ // iterando para acceder a todos los elementos
        console.log(numeros);
})

// extension de un arreglo
console.log(meses.length);

// Agregar datos a un array
numeros[5]= 60; // agregar conociendo la posicion e indice de los objetos

numeros.push(70); //agregar al final
numeros.unshift(-20,-10); // Agrega al inicio

meses.pop(); //elimina el último elemento
// meses.shift(); // elimina el primer elemento
meses.splice(2,1); //primer argumento indice de inicio, segundo argumento: numero de elementos a eliminar a partir del indice

console.table(numeros);
console.table(meses);


// Rest operator o spread operator
// se recomienda este enfoque para no modificar los datos originales

const meses2 = [
    "enero", "Febrero", "Marzo", "Abril","Mayo"
];

console.log(meses2);

const nuevoArray = [...meses2, "Junio"];

console.log(nuevoArray);