/*JOINs*/

select*from citas 
inner join clientes on clientes.id = citas.clienteId;


/*tabla pivote*/

create table citasServicios(
	id int(11) auto_increment,
    citaId int(11) not null,
    servicioId int(11) not null,
    primary key(id),
    key citaId(citaId),
    constraint citas_FK
    foreign key (citaId)
    references citas(id),
    key servicioId(servicioId),
    constraint servicios_FK
    foreign key (servicioId)
    references servicios(id)
);

/*Join de la tabla pivote*/

select*from citasservicios
left join citas on	citas.id = citasservicios.citaId
left join servicios on servicios.id = citasservicios.servicioId;

select*from citas;
select*from servicios;

insert into citasservicios(citaId, servicioId) values(1,3);
insert into citasservicios(citaId, servicioId) values(1,4);
select*from citasservicios;

select*from citasservicios
left join citas on	citas.id = citasservicios.citaId
left join servicios on servicios.id = citasservicios.servicioId;


/*Multiples join*/

select*from citasservicios
left join citas on citas.id = citasservicios.citaId 
left join clientes on citas.clienteId = clientes.id 
left join servicios on servicios.id = citasservicios.servicioId

