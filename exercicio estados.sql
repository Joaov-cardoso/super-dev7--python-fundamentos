DROP DATABASE IF EXISTS localizacoes;
CREATE DATABASE localizacoes;
USE localizacoes;

CREATE TABLE estados(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(2)
);

INSERT INTO estados (nome, sigla) VALUES ('Santa Catarina', 'SC');
INSERT INTO estados (nome, sigla) VALuES ('Paraná', 'PR');

CREATE TABLE cidades(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    id_estado INT,
    
    FOREIGN KEY(id_estado) REFERENCES estados(id)
);

INSERT INTO cidades (nome, id_estado) VALUES ('Blumenau', 1);
INSERT INTO cidades (nome, id_estado) VALUES ('Gaspar', 1);
INSERT INTO cidades (nome, id_estado) VALUES ('Curitiba', 2);
INSERT INTO cidades (nome, id_estado) VALUES ('Londrina', 2);

SELECT
	cidades.nome AS 'Cidade',
    estados.nome AS 'Estado',
    estados.sigla AS 'UF'
    FROM cidades
	INNER JOIN estados ON (cidades.id_estado = estados.id);

CREATE TABLE bairros(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    id_cidade INT,
    
    FOREIGN KEY(id_cidade) REFERENCES cidades(id)
);

INSERT INTO bairros (nome, id_cidade) VALUES ('Garcia', 1);
INSERT INTO bairros (nome, id_cidade) VALUES ('Água Verde', 1);
INSERT INTO bairros (nome, id_cidade) VALUES ('Centro', 2);
INSERT INTO bairros (nome, id_cidade) VALUES ('Poço Grande', 2);
INSERT INTO bairros (nome, id_cidade) VALUES ('Centro', 3);
INSERT INTO bairros (nome, id_cidade) VALUES ('Juvevê', 3);
INSERT INTO bairros (nome, id_cidade) VALUES ('Vila Casoni', 4);
INSERT INTO bairros (nome, id_cidade) VALUES ('Gleba Palhano', 4);

SELECT
	bairros.nome AS 'Bairro',
    cidades.nome AS 'Cidade'
    FROM bairros
    INNER JOIN cidades ON (bairros.id_cidade = cidades.id);

CREATE TABLE enderecos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    numero INT,
    logradouro VARCHAR(100),
    complemento VARCHAR(50),
    id_bairro INT,
    
    foreign key(id_bairro) REFERENCES bairros(id)
);

INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (207, 'Rua Barbacena', 'Casa', 1);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (40, 'Ru General Osório', 'Predio sla - Apartamento 42', 2);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (3042, 'Rua Pedro Ivo', 'Casa', 3);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (48, 'Rua Rocha Pombo', 'Casa', 4);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (32, 'Rua Joaozinho', 'Mansão', 5);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (48, 'Rua Mariazinha', 'Barraco', 6);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (0, 'Rua Felipe Correa', 'Rua', 7);
INSERT INTO enderecos (numero, logradouro, complemento, id_bairro) VALUES (1000, 'Rua Las Vegas', 'Cassino', 8);


SELECT
	enderecos.logradouro AS 'Logradouro',
    enderecos.numero AS 'Numero',
    enderecos.complemento AS 'Complemento',
    bairros.nome AS 'Bairro'
    FROM enderecos
    INNER JOIN bairros ON(enderecos.id_bairro = bairros.id);
    
SELECT
	enderecos.logradouro AS 'Logradouro',
    enderecos.numero AS 'Numero',
    enderecos.complemento AS 'Complemento',
    bairros.nome AS 'Bairro',
    cidades.nome AS 'Cidade',
    estados.nome AS 'Estado',
    estados.sigla AS 'UF'
    FROM enderecos
    INNER JOIN bairros ON (enderecos.id_bairro = bairros.id)
    INNER JOIN cidades ON (bairros.id_cidade = cidades.id)
    INNER JOIN estados ON (cidades.id_estado = estados.id)