use appsalon;

select*from servicios;

select*from servicios where precio > 90;

select*from servicios where precio between 100 and 200;


/*funciones agregadoras*/

select count(id), fecha
from reservaciones
group by fecha
order by count(id) desc;

select sum(precio) as totalServicios from servicios;

select min(precio) as precioMenor from servicios;

select max(precio) as precioMenor from servicios;


/*como buscar en sql
el operador % puede ubicarse al finalizar la palabra a buscar para indicarle si inicia con la palabra o finaliza con la palabra, dependiendo de su ubicación.

Con el signo % tanto al inicio como al final, buscará la ubicación en cualquier posición del str
*/

select*from servicios	
where nombre like 'Corte%';

select*from servicios	
where nombre like '%Corte';

select*from servicios	
where nombre like '%Corte%';


select*from servicios	
where nombre like '%Lavado%';

/*concatenar en SQL*/

select concat(nombre,' ', apellido) as nombreCompleto from reservaciones;

select * from reservaciones
where concat(nombre, ' ', apellido) like '%Ana Preciado%';

select hora, fecha, concat(nombre, ' ', apellido) as 'Nombre completo'
from reservaciones
where concat(nombre, ' ', apellido)
like '%Ana Preciado%';


/*funcion IN*/

select*from reservaciones where id in (1,3);




