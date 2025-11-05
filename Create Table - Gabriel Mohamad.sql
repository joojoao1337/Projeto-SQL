drop database if exists alugadora;
create database if not exists alugadora;

use alugadora;

create table if not exists jogo(
idjogo int not null primary key,
nomejogo varchar(45) not null,
categoriajogo enum("Casual", "Premium", "Colecionador"),
qtdcopias int not null,
valoraluguel float not null);

create table if not exists funcionario(
idfuncionario int not null primary key,
firstnome varchar(45) not null,
lastnome varchar(45) not null,
celular varchar(45) not null,
email varchar(45),
tipo enum("Gerente", "Atendente"),
idgerente int,
foreign key (idgerente) references funcionario(idfuncionario));

create table if not exists jogador(
idjogador int not null primary key,
firstnome varchar(45) not null,
lastnome varchar(45)not null,
celular varchar(45)not null,
email varchar(45));

create table if not exists aluguel(
idaluguel int not null primary key,
dataretirada datetime not null,
datadevolucao datetime not null,
qtdjogadoresadulto int not null,
qtdjogadoresmenor int not null,
idjogador int not null,
idfuncionario int not null,
foreign key (idjogador) references jogador(idjogador),
foreign key (idfuncionario) references funcionario(idfuncionario));

create table if not exists aluguel_jogo(
aluguel_jogoid int not null primary key,
idjogo int not null,
idaluguel int not null,
foreign key (idjogo) references jogo(idjogo),
foreign key (idaluguel) references aluguel(idaluguel));