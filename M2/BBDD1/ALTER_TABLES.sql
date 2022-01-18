alter table step add constraint FK_PK_ADVENTURE_STEP
foreign key (id_adventure)
	references adventure(id_adventure);
    
alter table option_step add constraint FK_ADVENTURE_OPTION_STEP
foreign key (id_adventure)
	references step(id_adventure);
    
alter table option_step add constraint FK_STEP_OPTION_STEP
foreign key (current_step)
	references step(id_step);
    
alter table option_step add constraint FK_STEP1_OPTION_STEP
foreign key (next_step)
	references step(id_step);

alter table saved_from_adventure add constraint FK_GAME_SAVED_FROM_ADVENTURE
foreign key(id_game)
	references game(id_game);
    
alter table saved_from_adventure add constraint FK_STEP_SAVED_FROM_ADVENTURE
foreign key(id_step)
	references step(id_step);
    
alter table saved_from_adventure add constraint FK_ADVENTURE_SAVED_FROM_ADVENTURE
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table saved_from_adventure add constraint FK_OPTION_STEP_SAVED_FROM_ADVENTURE
foreign key(id_option_step)
	references option_step(id_option_step);


alter table player_adventure add constraint FK_ADVENTURE_PLAYER_ADVENTURE
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table player_adventure add constraint FK_PLAYER_PLAYER_ADVENTURE
foreign key(id_player)
	references player(id_player);


alter table game add constraint FK_USER_GAME
foreign key(id_user)
	references user(id_user);
    
alter table game add constraint FK_ADVENTURE_GAME
foreign key(id_adventure)
	references adventure(id_adventure);
    
alter table game add constraint FK_PLAYER_GAME
foreign key(id_player)
	references player(id_player);
    