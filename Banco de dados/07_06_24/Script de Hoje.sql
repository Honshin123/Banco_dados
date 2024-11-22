-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Fornecedor (
	CodFornecedor 		int PRIMARY KEY,
	TelefoneFornecedor 	Varchar(15),
	Estado 				char(2),
	NomeFornecedor 		Varchar(50),
	CodCompra 			int,
	EndereçoFornecedor 	Varchar(50,
	CNPJFornecedor 		Varchar(15)
)

CREATE TABLE OrdemCompra (
	CodOrdemCompra 		int PRIMARY KEY,
	NomeResponsável 	Varchar(50),
	DataEmissão 		Date(9.2),
	ValorOrdem 			Decimal(9.2),
	CodFornecedor 		int,
	FOREIGN KEY(CodFornecedor) REFERENCES Fornecedor (CodFornecedor)
)

CREATE TABLE Material (
	CodMaterial 	int PRIMARY KEY,
	ValorItem 		Decimal(9.2),
	Descrição 		Varchar,
	ValorUnitario 	Decimal(9.2),
	Quantidade 		int
)

CREATE TABLE ItemCompra (
	CodIC 			int PRIMARY KEY,
	CodMaterial 	int,
	CodOrdemCompra 	int,
	FOREIGN KEY(CodMaterial) REFERENCES Material (CodMaterial)/*falha: chave estrangeira*/
)

