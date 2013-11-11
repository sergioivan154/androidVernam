drop table if exists inmuebles;

create table inmuebles(

num_inmueble varchar(6) primary key,
calle varchar(30) not null,
ciudad varchar(30) not null,
cp int(6) not null,
tipo varchar(50) not null,
num_habitac smallint(6) not null,
alquiler float(5) not null,
num_propietario int(6) not null,
num_empl_asignado int(6) not null,
num_sucursal varchar(6) not null
);
insert into inmuebles values ('PG4','k123','Glasgow',13500,'Descanso',7,22500,0001,00001,'B003'); 
insert into inmuebles values ('PG5','k123','Moreles',5045,'Oficinas',5,2500,0002,00001,'B003');
 
