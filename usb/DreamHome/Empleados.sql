drop table if exists empleados;
create table empleados(
num_empl int(6) primary key,
rol varchar(12), -- asistente o supervisor 
cantidad_asistentes tinyint(2), -- Los que son supervisores tienen un numero limite de 10 y lo asistentes tienen este campo con valor 0
cantidad_inmuebles tinyint(3)not null, -- El limite es 100
num_empl_super int(6),
num_sucursal varchar(6)not null
);

insert into empleados values (00001, '' ,0,5,0,'B003');
insert into empleados values (00002,  'Supervisor' ,2,0,0,'B003');
insert into empleados values (00003, 'asistente' ,0,0,00002,'B003');
insert into empleados values (00004, 'asistente' ,0,0,00002,'B003');
insert into empleados values (00007,  '' ,0,1,0,'B004');