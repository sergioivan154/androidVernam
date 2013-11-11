drop table if exists directores;

create table directores(
num_empl int primary key,
fecha_nombramiento datetime not null,
num_sucursal varchar(6)not null UNIQUE
);

insert into directores values (00005, '2013-01-12','B003');
insert into directores values (00006, '2013-01-12','B004');
insert into directores values (00008, '2013-01-12','B005');