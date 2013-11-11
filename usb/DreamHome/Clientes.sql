drop table if exists clientes;
create table clientes(
num_cliente int(6) primary key,
nombre varchar(30) not null,
ap_paterno varchar(30)not null,
ap_materno varchar(30),
num_tel1 varchar(16),
num_tel2 varchar(16),
tipo_preferido varchar(50),
fecha_registro datetime not null,
num_empl int not null,
num_sucursal  varchar(6) not null
);
insert into clientes values (00001,'Mike Ritchie','sdf','sdf','044-55-2145-0001','','Descanso', 
'2013-03-28 05:27',00001,'B003');
insert into clientes values (00002,'Diego','qsd','fwe','045-55-5445-0501','','Descanso', 
'2013-03-28 06:10',00001,'B003');
insert into clientes values (00003,'Kai','rwe','hgh','055-55-555-5555','','Oficinas', 
'2013-03-28 06:15',00001,'B003');