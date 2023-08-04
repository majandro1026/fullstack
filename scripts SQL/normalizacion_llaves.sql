/*Primera regla de normalización 1NF
Cada columna debe tener un unico valor y no debe tener grupos repetidos

Segunda regla de normalización 2NF
Una vez pasada la primera regla, debe pasarse a la segunda.

2NF se utiliza en llaves primarias compuestas, 
esto se refiere a la creación de dimensiones a través de llaves primarias y llaves foraneas

3NF se refiere a las relaciones entre tablas de hechos y de dimensiones

*/
use appsalon;
show tables;


/*DIAGRAMA DE ENTIDAD RELACION

CARDINALIDAD: la cardinalidad se refiere al número de veces que una instancia se relaciona con otra.

*/

create table clientes(
	id int(11) not null auto_increment,
    nombre varchar(60) not null, 
    apellido varchar(60) not null, 
    telefono varchar(10) not null,
    email varchar(30) not null unique,
    primary key(id)
);

create table citas (
	id int(11) not null auto_increment,
    fecha date not null,
    hora time not null,
    clienteId int(11) not null,
    primary key(id),
    key clienteId(clienteId),
    constraint cliente_FK
    foreign key (clienteId)
    references clientes(id)
);

show tables;
describe citas;
describe clientes;

/*insert into citas(fecha, hora, clienteId) values('2022-10-24', '15:03:00', 1)*/

select*from citas