create database prova;

use prova;

create table prova(
   idProva       int not null primary key auto_increment,
   dataProva     date not null,
   descricao     varchar(100) not null
);

create table questao(
	idquestao    int not null primary key auto_increment,
    peso         int not null,
    idProva      int not null, -- Chave estrangeira
    foreign key  (ifProva) references Prova (idProva)
    
);