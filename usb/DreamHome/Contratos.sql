drop table if exists contratos;
create table contratos(
num_contrato int(6) primary key,
alquiler_mensual float(5) not null,
modo_pago varchar(30)not null,
deposito_realizado char(2)not null, -- si, no
duracion_contrato varchar(50)not null,
inicio_contrato datetime not null,
fin_contrato datetime not null,
num_cliente int(6) not null,
num_inmueble varchar(5) not null

);

insert into contratos values (00001, 60000,'Un solo pago','si','3 meses','2013-03-28','2013-06-28',00001,'PG4');
insert into contratos values (00002, 60000,'Un solo pago','si','3 meses','2013-03-28','2013-06-28',00003,'PG5');