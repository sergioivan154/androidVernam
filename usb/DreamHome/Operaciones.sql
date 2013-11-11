-- (a)
select a.num_sucursal as 'sucursal', a.ciudad, a.calle, a.cp, a.num_tel1 as 'Numero telefonico 1', a.num_tel2 as 'Numero telefonico 2' 
, a.num_tel3 as 'Numero telefonico 3', concat(b.nombre,' ',b.ap_paterno,' ',b.ap_materno) as 'director' 
from sucursales a join(personal b join directores c on b.num_empl=c.num_empl) on a.num_sucursal=c.num_sucursal where ciudad='Glasgow';
-- (b)
select count(*) as 'numero de sucursales en Glasgow' from sucursales where ciudad='Glasgow';
-- (c) contando al director de la empresa como un empleado
(select a.nombre,a.ap_paterno,a.ap_materno, a.cat_laboral, a.salario from
personal a  join  directores b on a.num_empl = b.num_empl where b.num_sucursal='B003') 
union all (select c.nombre,c.ap_paterno,c.ap_materno, c.cat_laboral, c.salario from
personal c  join  empleados d on c.num_empl = d.num_empl where d.num_sucursal='B003' ) order by ap_paterno;

-- (d)
select count(*) as'Numero de trabajadores es la sucursal B003' , sum(salario)as'Total de salarios'  from (
(select a.nombre,a.ap_paterno,a.ap_materno, a.cat_laboral, a.salario from
personal a  join  directores b on a.num_empl = b.num_empl where b.num_sucursal='B003') 
union all (select c.nombre,c.ap_paterno,c.ap_materno, c.cat_laboral, c.salario from
personal c  join  empleados d on c.num_empl = d.num_empl where d.num_sucursal='B003' ) 
) as s;
-- (e)
select count(*) as'Numero de trabajadores es la sucursal B003' , sum(salario)as'Total de salarios'  
from (
(select a.nombre,a.ap_paterno,a.ap_materno, a.cat_laboral, a.salario from
personal a  join  directores b on a.num_empl = b.num_empl where b.num_sucursal='B003') 
union all (select c.nombre,c.ap_paterno,c.ap_materno, c.cat_laboral, c.salario from
personal c  join  empleados d on c.num_empl = d.num_empl where d.num_sucursal='B003' ) 
) as s;


select e.cat_laboral as 'categoiria laboral', count(e.num_empl) as 'numero de empleados'
from empleados e join sucursales s on e.num_sucursal=s.num_sucursal;




