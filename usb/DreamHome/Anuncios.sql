drop table if exists anuncios;

create table anuncios(
num_anuncio int(6) primary key,
fecha_publicacion datetime not null,
fecha_termino datetime not null,
num_periodico int(6)not null,
num_inmueble varchar(6)not null 
);
insert into anuncios values(0001,'2003-04-06','2003-06-06',0001,'PG4');
insert into anuncios values(0002,'2013-01-23','2013-03-28',0001,'PG4');
insert into anuncios values(0003,'2013-01-23','2013-03-28',0002,'PG5');
