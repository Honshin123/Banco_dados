-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE DEPENDENTE (
	idDependente int PRIMARY KEY,
	nome Varchar(50),
	dataNasc date,
	matriculaFunc int
)

CREATE TABLE FUNCIONARIO (
	matriculaFunc int PRIMARY KEY,
	nome Varchar(50),
	nacionalidade Varchar(30),
	dataNasc date,
	sexo Varchar(10),	
	estadoCivil Varchar(15),
	RG Varchar(15),
	CPF Varchar(15),
	endereço Varchar(50),
	telefone Varchar(15),
	dataAdmissão date
)

CREATE TABLE CARGO (
	idCargo int PRIMARY KEY,
	nomecargo Varchar(50),
	dataInicio date,
	dataFim date
)

CREATE TABLE ocupar (
	idCargo int, -- chave estrangeiro
	matriculaFunc int, -- chave estrangeira
	PRIMARY KEY(idCargo,matriculaFunc), -- chave primaria  composta
	FOREIGN KEY(idCargo) REFERENCES CARGO (idCargo),
	FOREIGN KEY(matriculaFunc) REFERENCES FUNCIONARIO (matriculaFunc)
)

ALTER TABLE DEPENDENTE ADD FOREIGN KEY(matriculaFunc) REFERENCES FUNCIONARIO (matriculaFunc)
