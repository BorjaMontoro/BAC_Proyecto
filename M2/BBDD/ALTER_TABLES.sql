alter table USER modify id_user int primary key auto_increment not null unique;

alter table USER modify username varchar(45) not null unique;

alter table USER modify password varchar(45) not null;

alter table USER modify date_creation datetime not null;

alter table USER modify user_creation varchar(45) not null;

alter table GAME modify id_game int primary key auto_increment not null unique;

alter table GAME modify id_user int not null;

alter table GAME modify id_player int not null;

alter table GAME modify id_adventure int not null;

alter table GAME modify date datetime not null;

alter table GAME modify date_creation datetime not null;

alter table GAME modify user_creation varchar(45) not null;

alter table PLAYER modify id_player int primary key auto_increment not null unique;

alter table PLAYER modify name_player varchar(45) not null unique;

alter table PLAYER modify description varchar(400) not null;

alter table PLAYER modify date_creation datetime not null;

alter table PLAYER modify user_creation varchar(45) not null;

alter table SAVED_FROM_ADVENTURE modify id_saved_from_adventure int primary key auto_increment not null unique;

alter table SAVED_FROM_ADVENTURE modify id_game int not null;

alter table SAVED_FROM_ADVENTURE modify id_step int not null;

alter table SAVED_FROM_ADVENTURE modify id_adventure int not null;

alter table SAVED_FROM_ADVENTURE modify date_creation datetime not null;

alter table SAVED_FROM_ADVENTURE modify user_creation varchar(45) not null;

alter table OPTION_STEP modify id_option_step int primary key auto_increment not null unique;

alter table OPTION_STEP modify current_step int not null;

alter table OPTION_STEP modify id_adventure int not null;

alter table OPTION_STEP modify answer varchar(1000) not null;

alter table OPTION_STEP modify description varchar(400) not null;

alter table OPTION_STEP modify date_creation datetime not null;

alter table OPTION_STEP modify user_creation varchar(45) not null;

alter table STEP modify id_step int auto_increment not null unique;

alter table STEP modify id_adventure int not null;

alter table STEP modify description varchar(1000) not null;

alter table STEP modify date_creation datetime not null;

alter table STEP modify user_creation varchar(45) not null;

alter table STEP modify final_step bit(1) not null;

alter table ADVENTURE modify id_adventure int primary key auto_increment not null unique;

alter table ADVENTURE modify name_adventure varchar(50) not null ;

alter table ADVENTURE modify description varchar(400) not null;

alter table ADVENTURE modify date_creation datetime not null;

alter table ADVENTURE modify user_creation varchar(45) not null;

alter table PLAYER_ADVENTURE modify id_adventure int not null;

alter table PLAYER_ADVENTURE modify id_player int not null;

alter table STEP add constraint PK_STEP primary key (id_step, id_adventure);

alter table PLAYER_ADVENTURE add constraint PK_PLAYER_ADVENTURE primary key (id_adventure, id_player);

alter table STEP add constraint FK_PK_ADVENTURE_STEP
foreign key (id_adventure)
	references ADVENTURE(id_adventure);
    
alter table OPTION_STEP add constraint FK_ADVENTURE_OPTION_STEP
foreign key (id_adventure)
	references STEP(id_adventure);
    
alter table OPTION_STEP add constraint FK_STEP_OPTION_STEP
foreign key (current_step)
	references STEP(id_step);
    
alter table OPTION_STEP add constraint FK_STEP1_OPTION_STEP
foreign key (next_step)
	references STEP(id_step);

alter table SAVED_FROM_ADVENTURE add constraint FK_GAME_SAVED_FROM_ADVENTURE
foreign key(id_game)
	references GAME(id_game);
    
alter table SAVED_FROM_ADVENTURE add constraint FK_STEP_SAVED_FROM_ADVENTURE
foreign key(id_step)
	references STEP(id_step);
    
alter table SAVED_FROM_ADVENTURE add constraint FK_ADVENTURE_SAVED_FROM_ADVENTURE
foreign key(id_adventure)
	references ADVENTURE(id_adventure);
    
alter table SAVED_FROM_ADVENTURE add constraint FK_OPTION_STEP_SAVED_FROM_ADVENTURE
foreign key(id_option_step)
	references OPTION_STEP(id_option_step);

alter table PLAYER_ADVENTURE add constraint FK_ADVENTURE_PLAYER_ADVENTURE
foreign key(id_adventure)
	references ADVENTURE(id_adventure);
    
alter table PLAYER_ADVENTURE add constraint FK_PLAYER_PLAYER_ADVENTURE
foreign key(id_player)
	references PLAYER(id_player);

alter table GAME add constraint FK_USER_GAME
foreign key(id_user)
	references USER(id_user);
    
alter table GAME add constraint FK_ADVENTURE_GAME
foreign key(id_adventure)
	references ADVENTURE(id_adventure);
    
alter table GAME add constraint FK_PLAYER_GAME
foreign key(id_player)
	references PLAYER(id_player);
    