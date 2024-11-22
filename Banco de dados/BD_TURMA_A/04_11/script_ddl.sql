-- criar banco de dados
create database nota;

-- habilitar o banco na memória
use nota;

-- excluir banco de dados 
drop database nota;

create table prova(
idProva        int not null primary key auto_increment,
dataProva      date not null,
resultado      decimal(9,2)
);		
-- excluir a tabela
drop table prova;

-- 
describe prova;

create table questao(
idQuestao			int not null primary key auto_increment,
descricao		    varchar(255) not null,
peso                int,
idProva             int not null, -- chave estrangeira
foreign key (idProva) references Prova (idProva)
);

create	table aluno(
idAluno             int not null primary key auto_increment,
nome                varchar(50) not null,
numCartao           int not null
);
create	table nota(
idaluno             int not null, -- chave estrangeira
idQuestao           int not null, -- chave estrangeira
nota                decimal(9,2) not null,
primary key(idaluno,idQuestao),-- chave primária composta
foreign key (idaluno) references Aluno (idaluno),
foreign key (idQuestao) references Questao (idQuestao)
);
