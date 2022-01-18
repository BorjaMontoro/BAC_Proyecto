insert into user (username, password, user_creation, date_creation)
values ('bac', 'bac123', 'Bac', current_timestamp());

insert into user (username, password, user_creation, date_creation)
values ('bac1', 'bac123', 'Bac', current_timestamp());


select * from user;

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('La cueva del tiempo','Una aventura que empieza en una cueva muy misteriosa en la que no se controla el tiempo, ¿Será verdad?',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Almas gemelas','Una aventura que consta de una persona que acaba de tener contacto visual con su posible alma gemela',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Supervivencia en la montaña','Una aventura donde el protagonista luchará por sus vidas después de un accidente de avión. Lo lograra?',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Pokemon gotta catch them all','Una aventura donde tendras que capturar a todos los pokemons.No funcional',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Destino final','Una aventura donde dependiendo de lo que escojas moriras o viviras.No funcional',current_timestamp(),'Bac');

insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Casino','Una aventura que dependiendo lo que escogas te volveras rico o pobre.No funcional',current_timestamp(),'Bac');





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

insert into player ( name_player, description, date_creation, user_creation)
values ('Sprout','Un personaje un tanto peculiar pero muy atrevido y aventurero',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Lady Gaga','Una chica con un buen instinto de supervivencia',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Yoshi','Es un chico vago pero con mucha imaginación.',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Ash','Viene de pueblo paleta',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Penelope','Chica miedica',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Tom Holland','Es un chico muy guapo y con bastante dinero',current_timestamp(), 'Bac');



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

insert into player_adventure values (3,6);

insert into player_adventure values (3,7);

insert into player_adventure values (3,8);

insert into player_adventure values (4,9);

insert into player_adventure values (5,10);

insert into player_adventure values (6,11);
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

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,'%player% intentas ir al puesto donde se encuentra una radio. Empiezas a caminar y encuentras 2 posibles sitios por los cuales podrías ir, una senda con animales o un torrente con agua que puedes cruzar saltando de piedra a piedra. Que camino eliges?.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,' Llegas a una meseta donde empieza a soplar un fuerte viento y una fuerte nevada te alcanza. Tu visión es casi nula pero logras ver un hueco entre las rocas donde podrias descansar pero te acuerdas de que hay vidas en juego y te preguntas si deberias seguir. Que haces?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,'Empiezas a escalar, al principio todo parece ir bien hasta la nevada empieza a parar y comienzas a tener mejor visibilidad. Pero a medida que vas avanzando te empiezas a encontrar mal, empiezas a toser, te duele la cabeza y te sientes mareado. Sigues subiendo y conquistas la cima o renuncias al terreno hecho y vuelves a bajar?.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,' Este camino te das cuenta que es más corto y ves a pocos metros de ti el lugar seguro con la radio para pedir auxilio. Al final acabas llegando sano y salvo. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'En ese momento tu cuerpo no puede aguantar mas y caes desplomado al suelo desde gran altura. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'La cobertura de las rocas no es suficiente para parar la nevada y te despiertas congelado y sin comida lo cual tu situación empeora y terminas cogiendo una hipotermia y acabas sin fuerza. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,'LLegas a la otra orilla nadando, pero estas tiritando que hasta te cuesta respirar. Intentas moverte para entrar en calor pero el frío te reduce las posibilidades de seguir hacia tu destino. Encuentras leña con la cual podrías hacer un buen fuego y calentarte. Pero al mojarte solo te ha quedado una cerilla para poder hacer fuego.
Enciendes el fuego con la última cerilla o sigues tu camino?',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,'Entras en calor lentamente y una vez recuperado vuelves a ponerte en marcha y te encuentras con una rocosa hondonada con una parte central que parece la más fácil para escalar pero hay grandes rocas a su lado. A lo mejor deberias ascender por el costado. Que sitio eliges?.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'Te das cuenta de que tu cuerpo empieza a coger cada vez más frio debido a la ropa húmeda. Empiezas a tener los síntomas de una hipotermia avanzada. Tu cuerpo pierde calor más rápido y no puede generarlo. Deberias de haber hecho el fuego. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,0,'A la mitad de la subida unas piedras caen y te asustan hasta enloquecer. Al final consigues llegar hasta la cima , al llegar te das cuenta que esta poblado de pinos. El puesto esta en dirección hacia el este pero hay nubes y no sabes donde queda el este. Tienes dos opciones seguir el riachuelo o seguir hacia delante.',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'La escalada es más fácil y sin peligro preferentemente pero al llegar a la mitad mas o menos una roca grande se cae provocando que te golpee y tirándote al suelo dejándote inconsciente. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'Sigues caminando pero a cuarenta metros ves una sombra. Se trata de un oso polar acercándose a ti. Ya no tienes escapatoria es tu fin. FIN',current_timestamp(),'Bac');

insert into step (id_adventure, final_step, description, date_creation, user_creation)
values (3,1,'Sigues tu camino recto y al parecer es un sitio tranquilo donde cada vez te queda menos para llegar al lugar. Finalmente llegas al lugar coges la radio y empiezas a pedir auxilio. FIN',current_timestamp(),'Bac');

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

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (25,24,3,' Al seguir la senda rodeas el torrente de agua que te impedía seguir recto. Subes cada vez más porque parece ser el único modo seguro.',' Senda con animales.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (26,25,3,'Sigues avanzando y logras llegar a una zona segura. A partir de ahora tendrás que empezar a escalar.',' Seguir adelante', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (27,26,3,'Retrocedes montaña abajo y encuentras un camino oculto.','Retroceder montaña abajo.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (28,26,3,'Al seguir escalando cada vez te vas encontrado peor hasta que llega un momento crucial.','Seguir escalando.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (29,25,3,'Te pones a cubierto entre las rocas y descansas.','Ponerse a cubierto. ', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (30,24,3,' Bordeas el torrente hasta que tu pie se queda pillado y caes al agua.','Torrente con agua.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (31,30,3,' Empiezas a recoger ramas de pino y haces el fuego. Lográs encender el fuego.','Haces el fuego. ', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (32,30,3,'Sigues el camino bordeando la barrera rocosa pero tu cuerpo sigue tiritando.','Sigues tu camino.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (33,31,3,' Subir por el costado se convierte en un ascenso largo y agotador.','Escalar por el costado.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (34,31,3,'Subir por el centro es más rapido pero a la vez más peligroso.','Escalar por la parte central.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (35,33,3,' Continuas tu camino por el riachuelo y ves a unos cuantos kilometros el puesto con la radio.','Seguir el riachuelo.', current_timestamp(),'Bac');

insert into option_step (next_step, current_step, id_adventure, answer, description, date_creation, user_creation)
values (36,33,3,'Sigues hacia delante y cada vez estas más cerca del puesto.','Seguir hacia delante.', current_timestamp(),'Bac');

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






