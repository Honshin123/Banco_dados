-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
IdCliente int PRIMARY KEY,
Email Varchar(100), NOT NULL
Nome Varchar(50), NOT NULL
Telefone Varchar(15), NOT NULL
Endereço Varchar(30), NOT NULL
)

CREATE TABLE Produto (
IDProduto int PRIMARY KEY, NOT NULL
Preco char, NOT NULL
Nome Varchar(50), NOT NULL
Estoque Char, NOT NULL
Descrição Varchar(50), NOT NULL
)

CREATE TABLE Pedido (
IDPedido int PRIMARY KEY, NOT NULL
IdCliente int, NOT NULL, -- chave estrangeira
dataPedido char(10), NOT NULL 
status Varchar(30), NOT NULL
FOREIGN KEY(IdCliente) REFERENCES Cliente (IdCliente)
)

CREATE TABLE Item (
IDItemPedido int PRIMARY KEY, NOT NULL
IDProduto int, NOT NULL, -- chave estrangeira
preco char, NOT NULL, -- chave estrangeira
Quantidade char, NOT NULL, -- chave estrangeira
FOREIGN KEY(IDProduto) REFERENCES Produto (IDProduto)
)

CREATE TABLE Fatura (
IDFatura int PRIMARY KEY, NOT NULL
IDPedido int,
data char(10),
Valor char(10),
FOREIGN KEY(IDPedido) REFERENCES Pedido (IDPedido)
)

CREATE TABLE incluir (
IDItemPedido int,
IDPedido int,
FOREIGN KEY(IDItemPedido) REFERENCES Item (IDItemPedido),
FOREIGN KEY(IDPedido) REFERENCES Pedido (IDPedido)
)

