insert into user (username, password, user_creation, date_creation)
values ('bac', 'bac123', 'Bac', current_timestamp());

insert into user (username, password, user_creation, date_creation)
values ('bac1', 'bac123', 'Bac', current_timestamp());


select * from user;

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('La cueva del tiempo','Una aventura que empieza en una cueva muy misteriosa en la que no se controla el tiempo, ¿Será verdad?',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Almas gemelas','Una aventura que consta de una persona que acaba de tener contacto visual con su posible alma gemela',current_timestamp(),'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Joe','Es un chico con pelo castaño, muy timido pero aventurero',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Alba','Es un chica con pelo negro, muy amable pero poco aventurera',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Izan','Es un chico con pelo rubio, hiperactivo pero torpe',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Toni','Es un chico con pelo castaño y es muy timido',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Carla','Es una chica con pelo rubio y es bastante extrovertida ',current_timestamp(), 'Bac');

select * from adventure;
select * from player;

insert into game (id_user, id_player, id_adventure, date, date_creation, user_creation)
values (1,3,1, current_timestamp(), current_timestamp(), 'Bac');

select * from user;
select * from player;
select * from adventure;
select * from game;

insert into player_adventure values (1,1);

insert into player_adventure values (1,2);

insert into player_adventure values (1,3);

insert into player_adventure values (2,4);

insert into player_adventure values (2,5);
select * from player_adventure;



insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'En un día soleado %player% ve iluminada la entrada de una cueva y decide entrar un par de metros para inspeccionar de golpe se siente atenuado y decide salir de la cueva. Al salir ve que ha cambiado el tiempo totalmente de ser de día a ser de noche, ¿%player% que decide hacer?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'Después de un rato  en el que hace mucho frio %player% mira su reloj y se da cuenta que está parado, puede pensar que este cambio repentino de tiempo es debido a la cueva por raro que parezca, %player% no sabe si seguir hacia llegar al rancho o volver a la cueva para ver si arregla el tiempo.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'No parece ser que solo había cambiado el tiempo sino que también había cambiado  el camino, se encuentra en un lugar muy montañoso en el que hace unas ráfagas de aire muy grandes, ve una cueva, ¿Entrara o seguirá caminando?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'Estas te persiguen con sus armas y te secuestran para hacer experimentos contigo ya que eres algo nuevo en su época, te quedas atrapado para siempre en ese universo. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'%player% decide darle un puñetazo a la pared y esta le absorbe y le devuelve a la cueva del inicio pero en el tiempo correcto. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'Al adentrarte ves que tienes un camino a la derecha y otro a la izquierda, ¿Hacia cual vas?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'%player% decide tocarla y esto le lleva a quedarse atrapado dentro de la bola para toda la eternidad. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'El trato que no podrás negar porque si no te mataría es que a cambio de uno de tus dientes te devolverá a tu realidad, entonces tu aceptas. Al llegar a tu realidad te das cuenta que tienes todos los dientes y eso es así porque estabas en un mundo paralelo. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'Al amanecer %player% ve una gran iluminación pero también ve que hace un frio helado y amenazador, que prefieres hacer',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,0,'En esta casa que parecía estar abandonada de golpe se presenta alguien era un romano, te extrañas de ver un romano en esta época, al ver que iba armado con una lanza, ¿Cual es la decisión que tomas?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'Ese romano parece ser que sabia como solucionar el problema y él le ayudo a volver a su realidad. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'Al estar escondido el romano pensaba que eras un enemigo y te mata con su lanza y te quedas atrapado en el universo paralelo. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (1,1,'Al temblar la cueva se le caen piedras en la cabeza y por lo tanto %player% muere pero no del todo, ya que al morir vuelve a su realidad en la que no se ha cambiado el tiempo. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,0,'%player% salio a pasear por la plaza y mientras descansaba un rato en la fuente vio a una chica muy guapa era de pelo castaño, ojos claro y una sonrisa hermosa. %player% tiene muchas ganas de hablarle pero no sabe que hacer.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,0,'Mientras hablaban un rato se veian muy comodos entonces la chica dio la iniciativa y le dijo de ir a tomar algo',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,1,'La chica se extraño porque al principio %player% parecia tener interes pero le dijo nada mas y se fue. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,0,'Mientras %player% y la chica se concen se dan cuenta que tienen muchas cosas en comun. Ahora quien toma la iniciativa es %player%, ¿Donde le quieres decir de ir por la noche?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,0,'En el momento de ver la estrellas se sienten tan agusto, que no estas seguro de que hacer si lanzarte o no',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,0,'Mientras os estais divirtiendo muchisimo bailando te das cuenta que ves a tu ex pareja en la discoteca, ¿Quieres ir a saludarla o prefieres quedarte?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,1,'Has triunfado tienes a la chica de tus sueños en este mismo instante enhorabuena. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,1,'Al no hacer nada queda como una noche con una persona desconocida y acabais perdiendo el contacto. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,1,'La chica al ver que fue a saludar a su ex se enfado y cuando %player% se dio la vuelta vio a la chica con otro chico. La has perdido.FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (2,1,'Al final de la noche despues de una entretenida noche se fueron juntos a su casa y siguieron manteniendo el contacto. FIN',current_timestamp(),'Bac');

select * from step;


insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (2,1,1,'Mientras vas por el camino te parece cambiado, a lo mejor es por la luz de la luna, pero parece muy distinto.','Volver a casa', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (9,1,1,'Te quedas dentro de la cueva para ver si cambia el tiempo otra vez rápidamente ya que es muy extraño lo que acababa de suceder','Esperar', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (3,2,1,'%player% decide ir directamente hacia el rancho por el frio que hace y porque crees que el tema del tiempo es una tontería','Seguir hacia el rancho', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (6,2,1,'Al volver entras de nuevo y te adentras un poco más que la anterior vez','Volver a la cueva', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (4,3,1,'Al entrar ves que hay personas parecidas a la gente del paleolítico y que están pintando en la pared figuras extrañas','Entrar en la cueva', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (5,3,1,'Decide seguir avanzando por la montaña hasta que parece ser que hay una pared invisible que no le permite avanzar más','Sigues caminando', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (7,6,1,'Empiezas a caminar por el camino de la derecha donde ves una bola de cristal gigante brillando','Derecha', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (8,6,1,'Encuentras a una bruja que te ofrece un trato que te beneficiarias mucho','Izquierda', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (10,9,1,'%player% sale de la cueva en busca de un refugio y encuentra una casita que parece estar abandonada pero en un muy buen estado','Buscar un refugio', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (13,9,1,'No era muy buena idea ya que al ser una cueva las ráfagas  de aire la  hacen temblar entera','Aguantar las grandes ráfagas en la cueva', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (11,10,1,'Le decides saludar mientras estas un poco asustado y le dices que si sabe algo sobre esa cueva y sobre el cambio del tiempo','Saludarle y pedirle ayuda', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (12,10,1,'Te escondes porque tienes miedo, mientras tanto estas rezando para que no te encuentre','Esconderte dentro del armario', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (15,14,2,'Al acercarse la chica se ve extrañada ya que no le solia pasar','Acercarse a saludarla', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (15,14,2,'Al tener tanto contacto visual se noto que habia tension y la chica decidio acercarse','Quedarse simplemente observandola', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (17,15,2,'Deciden ir al Tinyol para hacer una buena merienda y hablar un rato sobre ellos','Le digo que si', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (16,15,2,'%player% por su timidez le acaba rechazando el plan','Le digo que no', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (18,17,2,'Le parece un plan muy tranquilo y muy bueno para esta ocasion y lo acepta','Ver las estrellas', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (19,17,2,'Le parece un plan mas movido como a ella le gusta','Discoteca', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (20,18,2,'Al lanzarte te das cuenta que la chica tambien tenia ganas','Me lanzo', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (21,18,2,'Por aguantarte las ganas de lanzarte no acaba surguiendo nada','No me lanzo', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (22,19,2,'Al ir a saludarla la chica se queda un poco enfadada','Saludas a tu ex', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (23,19,2,'Al quedarte con ella seguis teniendo una muy buena noche','Prefiero quedarme', current_timestamp(),'Bac');

select * from option_step;

insert into saved_from_adventure (id_game,id_step,id_adventure,id_option_step, date_creation, user_creation)
values (1,1,1,1, current_timestamp(),'Bac');
insert into saved_from_adventure (id_game,id_step,id_adventure,id_option_step, date_creation, user_creation)
values (1,2,1,4, current_timestamp(),'Bac');
insert into saved_from_adventure (id_game,id_step,id_adventure,id_option_step, date_creation, user_creation)
values (1,6,1,7, current_timestamp(),'Bac');
insert into saved_from_adventure (id_game,id_step,id_adventure, date_creation, user_creation)
values (1,7,1, current_timestamp(),'Bac');

select * from saved_from_adventure;






