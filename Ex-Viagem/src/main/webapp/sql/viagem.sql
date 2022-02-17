CREATE DATABASE EX1_VIAGENS;
USE EX1_VIAGENS;


CREATE TABLE motorista(
	codigo int primary key,
	nome varchar(100),
	naturalidade varchar(100)
)


CREATE TABLE onibus(
	placa varchar(100) primary key,
	marca varchar(100),
	ano int,
	descricao varchar(100)
)


CREATE TABLE viagem(
	codigo int primary key not null,
	onibus varchar(100) not null,
	motorista int not null,
	hora_saida int check (hora_saida >= 0),
	hora_chegada int check (hora_chegada >= 0),
	partida varchar(100),
	destino varchar(100)
	
	FOREIGN KEY (onibus) REFERENCES onibus(placa),
	FOREIGN KEY (motorista) REFERENCES motorista(codigo)
)


---------ADICIONANDO DADOS AS TABELAS


INSERT INTO motorista (codigo, nome, naturalidade) VALUES
(12341,	'Julio Cesar',	'São Paulo'),
(12342,	'Mario Carmo',	'Americana'),
(12343,	'Lucio Castro',	'Campinas'),
(12344,	'André Figueiredo',	'São Paulo'),
(12345,	'Luiz Carlos',	'São Paulo'),
(12346,	'Carlos Roberto',	'Campinas'),
(12347,	'João Paulo',	'São Paulo')


INSERT INTO onibus(placa, marca, ano, descricao) VALUES
('adf0965',	'Mercedes',	2009,	'Leito'),
('bhg7654',	'Mercedes',	2012,	'Sem Banheiro'),
('dtr2093',	'Mercedes',	2017,	'Ar Condicionado'),
('gui7625',	'Volvo', 2014,'Ar Condicionado'),
('jhy9425',	'Volvo', 2018,	'Leito'),
('lmk7485',	'Mercedes',	2015,	'Ar Condicionado'),
('aqw2374',	'Volvo'	,2014	,'Leito')

SELECT * FROM onibus;


INSERT INTO viagem (codigo, onibus, motorista, hora_saida, hora_chegada, partida, destino) VALUES
(101,	'adf0965',	12343,	10,	12,	'São Paulo',	'Campinas'),
(102,	'gui7625',	12341,	7,	12,	'São Paulo',	'Araraquara'),
(103,	'bhg7654',	12345,	14,	22,	'São Paulo',	'Rio de Janeiro'),
(104,	'dtr2093',	12344,	18,	21,	'São Paulo',	'Sorocaba'),
(105,	'aqw2374',	12342,	11,	17,	'São Paulo',	'Ribeirão Preto'),
(106,	'jhy9425',	12347,	10,	19,	'São Paulo',	'São José do Rio Preto'),
(107,	'lmk7485',	12346,	13,	20,	'São Paulo',	'Curitiba'),
(108,	'adf0965',	12343,	14,	16,	'Campinas',	'São Paulo'),
(109,	'gui7625',	12341,	14,	19,	'Araraquara',	'São Paulo'),
(110,	'bhg7654',	12345,	0,	8,	'Rio de Janeiro',	'São Paulo'),
(111,	'dtr2093',	12344,	22,	1,	'Sorocaba',	'São Paulo'),
(112,	'aqw2374',	12342,	19,	5,	'Ribeirão Preto',	'São Paulo'),
(113,	'jhy9425',	12347,	22,	7,	'São José do Rio Preto',	'São Paulo'),
(114,	'lmk7485',	12346,	0,	7,	'Curitiba',	'São Paulo')


-----------CRIANDO AS VIEWS
--3) Criar uma View (Chamada v_descricao_onibus) que mostre o Código da Viagem, 
--o Nome do motorista, a placa do ônibus (Formato XXX-0000), a Marca do ônibus, o Ano do ônibus e a descrição do onibus

CREATE VIEW v_descricao_onibus
AS
SELECT v.codigo, m.nome, (SUBSTRING(o.placa, 1, 3) + '-' + SUBSTRING(o.placa, 4, 7)) AS placa, 
o.marca, o.ano, o.descricao
FROM viagem v, motorista m, onibus o 
WHERE v.onibus = o.placa
AND v.motorista = m.codigo;

SELECT * FROM v_descricao_onibus;

--4) Criar uma View (Chamada v_descricao_viagem) que mostre o Código da viagem, 
--a placa do ônibus(Formato XXX-0000), a Hora da Saída da viagem (Formato HH:00), 
--a Hora da Chegada da viagem (Formato HH:00), partida e destino

CREATE VIEW v_descricao_viagem 
AS
SELECT v.codigo, (SUBSTRING(o.placa, 1, 3) + '-' + SUBSTRING(o.placa, 4, 7)) AS placa,
(
	CASE 
	WHEN(LEN(CONVERT(VARCHAR(2), v.hora_saida)) < 2) THEN
		'0' + CONVERT(VARCHAR(2), v.hora_saida) + ':00'
	ELSE
		CONVERT(VARCHAR(2), v.hora_saida) + ':00'
	END
) 
as hora_saida, 
(
	CASE 
	WHEN(LEN(CONVERT(VARCHAR(2), v.hora_chegada)) < 2) THEN
		'0' + CONVERT(VARCHAR(2), v.hora_chegada) + ':00'
	ELSE
		CONVERT(VARCHAR(2), v.hora_chegada) + ':00'
	END
)
as hora_chegada, 
v.partida, v.destino  
FROM viagem v, motorista m, onibus o 
WHERE v.onibus = o.placa
AND v.motorista = m.codigo;


SELECT * FROM v_descricao_viagem
WHERE codigo = 101;

SELECT * FROM v_descricao_onibus
WHERE codigo = 101;



