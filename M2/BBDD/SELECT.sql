select concat(a.id_adventure,' - ', a.name_adventure) as 'ID AVENTURA - NOMBRE' , concat(s.id_step,' - ',s.description) as 'ID PASO - DESCRIPCION', concat(o.id_option_step,' - ',o.description) as 'ID RESPUESTA - DESCRIPCION' 
from ADVENTURE a
inner join STEP s on  a.id_adventure =s.id_adventure
inner join OPTION_STEP o on s.id_step=o.current_step
limit 8;

select u.username AS 'NOMBRE USUARIO', count(g.id_user) as PARTIDAS_JUGADAS from GAME g
inner join USER u on g.id_user=u.id_user
group by u.username, g.date
order by PARTIDAS_JUGADAS desc, date asc
limit 1;

select g.id_adventure, a.name_adventure, g.date 
from GAME g
inner join ADVENTURE a on a.id_adventure=g.id_adventure
inner join USER u on u.id_user=g.id_user
where username='proyecto1'
order by date desc;

