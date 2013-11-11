drop table if exists personal;

create table personal(
num_empl int (6) primary key,
cat_laboral  varchar(30) not null,
salario float(5) not null,
nombre varchar(30) not null,
ap_paterno varchar(30) not null,
ap_materno varchar(30),
sexo char(1) not null,
fecha_nacim datetime  not null,
calle varchar(30) not null,
interior varchar(10)  not null,
exterior varchar(10)  not null,
colonia varchar(30) ,
delegacion varchar(30),
cp int(6) not null
);

insert into personal values (00001,'Vendedor',6000, 'Ann Beech','dsdf','sdf','F','1992-12-12','apple 123rd','int 14','ext 258','asda','de',35153);
insert into personal values (00002,'Ingeniero en informatica',25000, 'Sergio Ivan','Lopez','Monzon','M','1992-08-16','Jenufa','lt 17','Mz 104','Miguel Hidalgo','Tlahuac',13200);
insert into personal values (00003,'Tecnico en informatica',5000, 'Pedro Juan','Hernandez','Rocha','M','1982-09-18','Manzana','S/N','548','Joban','Teran',54658);
insert into personal values (00004,'Tecnico en informatica',5000, 'Ana','Martinez','Lopez','F','1992-05-20','Nueva','lt 87','Mz 65','Carretera','Cuenca',54687);
insert into personal values (00005,'Director',50000, 'Cho','Li','Chang','M','1975-07-01','una','52','546','esquina','otra',45689);
insert into personal values (00006,'Director',50000, 'Juan','Ortiz','Camarino','M','1973-02-05','calle 70','787','115','paseos','una mas',15000);
insert into personal values (00007,'Vendedor',6000, 'Gerardo','Limon','Lima','M','1993-02-05','callo','978','47','kija','La ultima',8978);
insert into personal values (00008,'Director',50000, 'Paulina','dsf','wef','F','1993-02-05','d','213','4127','dfv','wef',987);