select concat(a.id_adventure,' - ', a.name_adventure) as 'ID AVENTURA - NOMBRE' , concat(s.id_step,' - ',s.description) as 'ID PASO - DESCRIPCION', concat(o.id_option_step,' - ',o.description) as 'ID RESPUESTA - DESCRIPCION' 
from adventure a
inner join step s on  a.id_adventure =s.id_adventure
inner join option_step o on s.id_step=o.current_step ;

