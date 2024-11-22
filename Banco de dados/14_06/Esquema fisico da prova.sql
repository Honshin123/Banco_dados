-- Geração de Modelo físico
-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Curso (
		Nome Varchar(50),
		ID_Curso char(10),
		ID_Departamento char(10),
-- Erro: nome do campo duplicado nesta tabela!
		ID_Departamento char(10),
		PRIMARY KEY(ID_Curso,ID_Departamento),
)

CREATE TABLE Departamemto (
		ID_Departamento char(10) PRIMARY KEY,
		Nome Varchar(50),
)

CREATE TABLE Historico (
		ID_Historico Char(50),
		RA_Aluno char(20),
		ID_Disciplina char(10,
		ID_Professor char(11),
		situação Varchar(50),
		falta char,
		nota char,
-- Erro: nome do campo duplicado nesta tabela!
		RA_Aluno char(10),
		ID_Curso char(10),
-- Erro: nome do campo duplicado nesta tabela!
		ID_Professor char(11),
		Nome Varchar(50),
		Titulo Varchar(30),
		PRIMARY KEY(ID_Historico,RA_Aluno,ID_Disciplina,ID_Professor,situação,falta,nota),
)

CREATE TABLE Aluno (
		RA_Aluno char(10),
		Nome Varchar(50),
		Status Varchar(15),
		ID_Curso char(10),
		Carga_Horária int,
-- Erro: nome do campo duplicado nesta tabela!
		ID_Curso char(10),
		ID_Departamento char(10),
		ID_Disciplina char(10),
		PRIMARY KEY(RA_Aluno,ID_Curso),
		FOREIGN KEY(ID_Departamento,,) REFERENCES Curso (ID_Curso,ID_Departamento),
)

CREATE TABLE Professor (
		ID_Professor char(11),
		Nome Varchar(50),
		Titulo Varchar(30),
		PRIMARY KEY(ID_Professor,Nome,Titulo),
)

CREATE TABLE Disciplina (
		ID_Disciplina char(10) PRIMARY KEY,
		Nome Varchar,
		Carga_Horaria int,
)

CREATE TABLE lecionar (
		ID_Disciplina char(10),
		ID_Professor char(11),
		Nome Varchar(50),
		Titulo Varchar(30),
		FOREIGN KEY(ID_Disciplina) REFERENCES Disciplina (ID_Disciplina),
		FOREIGN KEY(Titulo,,,) REFERENCES Professor (ID_Professor,Nome,Titulo),
)

		ALTER TABLE Curso ADD FOREIGN KEY(ID_Departamento) REFERENCES Departamemto (ID_Departamento),
		ALTER TABLE Historico ADD FOREIGN KEY(ID_Curso,,) REFERENCES Aluno (RA_Aluno,ID_Curso),
		ALTER TABLE Historico ADD FOREIGN KEY(Titulo,,,) REFERENCES Professor (ID_Professor,Nome,Titulo),
		ALTER TABLE Aluno ADD FOREIGN KEY(ID_Disciplina) REFERENCES Disciplina (ID_Disciplina),
