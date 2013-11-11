drop table if exists propietarios_empresas;
create table propietarios_empresas(
num_propietario int(6) primary key,
nombre_empresa varchar(30) not null,
tipo_empresa varchar(30) not null,
nombre_contacto varchar(30) not null,
ap_paterno_contacto varchar(30) not null,
ap_materno_contacto varchar(30) 
);
insert into propietarios_empresas values (0002, 'Sueños S.A. de C.V.','Servicios','Antonio','Perez','Rios');