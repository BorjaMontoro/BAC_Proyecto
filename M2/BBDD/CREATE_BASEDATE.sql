drop database if exists BAC;
create database BAC character set utf8;
use BAC;

create table if not exists USER(
id_user int,
username varchar(45),
password varchar(45),
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));


create table if not exists GAME(
id_game int,
id_user int,
id_player int,
id_adventure int,
date datetime,
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45)
);

create table if not exists PLAYER(
id_player int,
name_player varchar(45),
description varchar(400),
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));

create table if not exists SAVED_FROM_ADVENTURE(
id_saved_from_adventure int,
id_game int,
id_step int,
id_adventure int,
id_option_step int,
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));

create table if not exists OPTION_STEP(
id_option_step int,
next_step int,
current_step int,
id_adventure int,
answer varchar(1000),
description varchar(400),
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));

create table if not exists STEP(
id_step int,
id_adventure int,
final_step bit(1),
description varchar(1000),
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));

create table if not exists ADVENTURE(
id_adventure int,
name_adventure varchar(50),
description varchar(400),
date_creation datetime,
user_creation varchar(45),
date_modification datetime,
user_modification varchar(45));

create table if not exists PLAYER_ADVENTURE(
id_adventure int,
id_player int);


    
    






