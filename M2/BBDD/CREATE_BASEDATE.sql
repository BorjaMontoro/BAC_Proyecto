drop database if exists BAC;
create database BAC;
use BAC;

create table if not exists user(
id_user int primary key auto_increment not null unique,
username varchar(45) not null unique,
password varchar(45) not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45));


create table if not exists game(
id_game int primary key auto_increment not null unique,
id_user int not null,
id_player int not null,
id_adventure int not null,
date datetime not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45)
);

create table if not exists player(
id_player int primary key auto_increment not null unique,
name_player varchar(45) not null unique,
description varchar(400) not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45));

create table if not exists saved_from_adventure(
id_saved_from_adventure int primary key auto_increment not null unique,
id_game int not null,
id_step int not null,
id_adventure int not null,
id_option_step int,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45));

create table if not exists option_step(
id_option_step int primary key auto_increment not null unique,
next_step int,
current_step int not null,
id_adventure int not null,
answer varchar(400) not null,
description varchar(400) not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45));

create table if not exists step(
id_step int auto_increment not null unique,
id_adventure int not null,
final_step bit(1) not null,
description varchar(400) not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45),
constraint pk_step primary key(id_step,id_adventure)
);

create table if not exists adventure(
id_adventure int primary key auto_increment not null unique,
name_adventure varchar(50) not null,
description varchar(400) not null,
date_creation datetime not null,
user_creation varchar(45) not null,
date_modification datetime,
user_modification varchar(45));

create table if not exists player_adventure(
id_adventure int not null,
id_player int not null);


    
    






