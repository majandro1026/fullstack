USE appsalon;

/*Crear datos*/
CREATE TABLE servicios (
	id int(11) NOT NULL auto_increment,
    nombre varchar(60) not null,
    precio decimal(6,2) not null,
    primary key (id)
    );
    
describe servicios;

/* Insertar datos*/
insert into servicios(nombre, precio) values("Corte de Cabello de Adulto", 80);
insert into servicios(nombre, precio) values("Corte de Cabello Niño", 60);
insert into servicios(nombre, precio) values
	("Peinado Mujer", 80),
    ("Peinado Hombre", 60);
 
 /*consultar datos*/

select*from servicios;

select nombre from servicios;

select id, nombre, precio
from servicios
order by precio asc;

select id, nombre, precio
from servicios
order by precio desc;

select id, nombre, precio
from servicios
order by id
limit 2;

/*Update*/

update servicios
	set precio = 70
    where id = 2;

update servicios
	set nombre = 'Corte de Cabello de Niño Actualizado'
    where id = 2;
    
update servicios
	set nombre = 'Corte de Cabello Adulto Actualizado', precio = 120
    where id = 1;
    
/*Delete*/

delete from servicios where id = 1;

select*from servicios;