use appsalon;

describe servicios;

/*modificar tablas*/

alter table servicios add descripcion varchar(100) not null;


/*change permite cambiar los nombres de las columnas pero no su tipo de dato*/
alter table servicios change descripcion nuevo_nombre varchar(11) not null;

select*from servicios;


/*eliminar tablas*/

show tables;

drop table servicios;


/*nueva tabla*/

create table servicios(
	id int(11) not null auto_increment,
    nombre varchar(60) not null,
    precio decimal(6,2) not null,
    primary key (id)
    );
    
create table reservaciones(
	id int(11) not null auto_increment,
    nombre varchar(60) not null,
    apellido varchar(60) not null,
    hora time default null,
    fecha date default null,
    servicios varchar(255) not null, 
    primary key (id)
);


show tables;
describe reservaciones;

select*from reservaciones;
    