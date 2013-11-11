drop table if exists propietarios_privados;
create table propietarios_privados(
num_propietario int(6) primary key,
nombre varchar(30) not null,
ap_paterno varchar(30)not null,
ap_materno varchar(30)
);
insert into propietarios_privados values (0001, 'Sergio Ivan','López','Monzón');