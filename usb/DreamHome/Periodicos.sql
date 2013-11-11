drop table if exists periodicos;
create table periodicos(
num_periodico int(6) primary key,
nombre_peridico varchar(30)not null,
calle varchar(30)not null,
interior varchar(10)not null,
exterior varchar(10)not null,
colonia varchar(30),
delegacion varchar(30),
cp int(6)not null,
num_tel1 varchar(16), 
num_tel2 varchar(16),
nombre_contacto varchar(30)not null,
ap_paterno_contacto varchar(30)not null,
ap_materno_contacto varchar(30)
);
insert into periodicos values (0001, 'Periodico Local Glasgow','calle','12','123','colonia',
'delegacion',12345,'(56)-5001-2000','',
'Parker','gloae','sime');
insert into periodicos values (0002, 'Periodico el Clarin','calle12','1','56','colonia22',
'delegacion21',45654,'(56)-5001-5645','(56)-5001-5646',
'Simon','kim','Kas');
