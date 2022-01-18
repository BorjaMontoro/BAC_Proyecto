alter table user modify id_user int primary key auto_increment not null unique;

alter table user modify username varchar(45) not null unique;

alter table user modify password varchar(45) not null;

alter table user modify date_creation datetime not null;

alter table user modify user_creation varchar(45) not null;

alter table game modify id_game int primary key auto_increment not null unique;

alter table game modify id_user int not null;

alter table game modify id_player int not null;

alter table game modify id_adventure int not null;

alter table game modify date datetime not null;

alter table game modify date_creation datetime not null;

alter table game modify user_creation varchar(45) not null;

alter table player modify id_player int primary key auto_increment not null unique;

alter table player modify name_player varchar(45) not null unique;

alter table player modify description varchar(400) not null;

alter table player modify date_creation datetime not null;

alter table player modify user_creation varchar(45) not null;

alter table saved_from_adventure modify id_saved_from_adventure int primary key auto_increment not null unique;

alter table saved_from_adventure modify id_game int not null;

alter table saved_from_adventure modify id_step int not null;

alter table saved_from_adventure modify id_adventure int not null;

alter table saved_from_adventure modify date_creation datetime not null;

alter table saved_from_adventure modify user_creation varchar(45) not null;

alter table option_step modify id_option_step int primary key auto_increment not null unique;

alter table option_step modify current_step int not null;

alter table option_step modify id_adventure int not null;

alter table option_step modify answer varchar(1000) not null;

alter table option_step modify description varchar(400) not null;

alter table option_step modify date_creation datetime not null;

alter table option_step modify user_creation varchar(45) not null;

alter table step modify id_step int auto_increment not null unique;

alter table step modify id_adventure int not null;

alter table step modify description varchar(1000) not null;

alter table step modify date_creation datetime not null;

alter table step modify user_creation varchar(45) not null;

alter table step modify final_step bit(1) not null;

alter table adventure modify id_adventure int primary key auto_increment not null unique;

alter table adventure modify name_adventure varchar(50) not null ;

alter table adventure modify description varchar(400) not null;

alter table adventure modify date_creation datetime not null;

alter table adventure modify user_creation varchar(45) not null;

alter table player_adventure modify id_adventure int not null;

alter table player_adventure modify id_player int not null;

alter table step add constraint pk_step primary key (id_step, id_adventure);

alter table player_adventure add constraint pk_player_adventure primary key (id_adventure, id_player);

alter table step add constraint fk_pk_adventure_step
foreign key (id_adventure)
	references adventure(id_adventure);
    
alter table option_step add constraint fk_adventure_option_step
foreign key (id_adventure)
	references step(id_adventure);
    
alter table option_step add constraint fk_step_option_step
foreign key (current_step)
	references step(id_step);
    
alter table option_step add constraint fk_step1_option_step
foreign key (next_step)
	references step(id_step);

alter table saved_from_adventure add constraint fk_game_saved_from_adventure
foreign key(id_game)
	references game(id_game);
    
alter table saved_from_adventure add constraint fk_step_saved_from_adventure
foreign key(id_step)
	references step(id_step);
    
alter table saved_from_adventure add constraint fk_adventure_saved_from_adventure
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table saved_from_adventure add constraint fk_option_step_saved_from_adventure
foreign key(id_option_step)
	references option_step(id_option_step);


alter table player_adventure add constraint fk_adventure_player_adventure
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table player_adventure add constraint fk_player_player_adventure
foreign key(id_player)
	references player(id_player);


alter table game add constraint fk_user_game
foreign key(id_user)
	references user(id_user);
    
alter table game add constraint fk_adventure_game
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table game add constraint fk_player_game
foreign key(id_player)
	references player(id_player);
    