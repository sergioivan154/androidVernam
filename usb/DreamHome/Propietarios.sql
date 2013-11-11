drop table if exists propietarios;

create table propietarios(
num_propietario int(6) primary key,
tipo varchar(12) not null,-- empresa, privado
ciudad varchar(30)not null,
calle varchar(30)not null,
interior varchar(10)not null,
exterior varchar(10)not null,
colonia varchar(30),
delegacion varchar(30),
cp int(6) not null,
num_tel1 varchar(16) not null, 
num_tel2 varchar(16) not null
);

insert into propietarios values (0001, 'privado','Glasgow','1235 KL','Lt 17','Mz 104','colonia','delegacion',15400, 
'(55)-2160-4038','');
insert into propietarios values (0002, 'empresa','Toluca','Camino Rural','S/N','101','colonia2','delegacion1',4564, 
'(52)-4566-5645','');

