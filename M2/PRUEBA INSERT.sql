insert into user (username, password, user_creation, date_creation)
values ('bac', 'bac123', 'ALEX MARTINEZ', current_timestamp());

select * from user;

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('me quiero morir','el proyecto esta acabando con mi vida me la esta arruinando',current_timestamp(),'ALEX MARTINEZ');

INSERT INTO player ( name_player, description, date_creation, user_creation)
values ('Monkey D. Luffy','Monkey D. Luffy es el mejor personaje que podras escoger',current_timestamp(), 'ALEX MARTINEZ');

insert into game (id_user, id_player, id_adventure, date, date_creation, user_creation)
values (1,1,1, current_timestamp(), current_timestamp(), 'ALEX MARTINEZ');

select * from user;
select * from player;
select * from adventure;
select * from game;