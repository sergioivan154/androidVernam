drop table if exists sucursales;

create Table sucursales(
num_sucursal varchar(6) primary key,
ciudad varchar(30) not null,
calle varchar(30) not null,
cp int (6) not null,
num_tel1 varchar(16),
num_tel2 varchar(16),
num_tel3 varchar(16)
);


insert into sucursales values ('B003','Glasgow','13th avenue',21103,'044-55-2145-0001','','');
insert into sucursales values ('B004','Distrito Federal','calle 45',45877,'(55)-5868-4505','','');
insert into sucursales values ('B005','Glasgow','15th avenue',2165,'044-55-2145-0002','','');

