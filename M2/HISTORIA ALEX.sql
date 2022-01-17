insert into adventure ( name_adventure, description, date_creation, user_creation)
values ('Supervivencia en la montaña','Una aventura donde el protagonista luchará por sus vidas después de un accidente de avión. Lo lograra?',current_timestamp(),'Bac');

select * from step;

insert into player ( name_player, description, date_creation, user_creation)
values ('Sprout','Un personaje un tanto peculiar pero muy atrevido y aventurero',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Lady Gaga','Una chica con un buen instinto de supervivencia',current_timestamp(), 'Bac');

insert into player ( name_player, description, date_creation, user_creation)
values ('Yoshi','Es un chico vago pero con mucha imaginación.',current_timestamp(), 'Bac');

insert into player_adventure values (3,6);

insert into player_adventure values (3,7);

insert into player_adventure values (3,8);

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









