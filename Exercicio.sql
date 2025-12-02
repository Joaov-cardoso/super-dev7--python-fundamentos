DROP DATABASE IF EXISTS futebol;
CREATE DATABASE futebol;
USE futebol;

CREATE TABLE times_futebol(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    faturamento_anual DOUBLE
);

INSERT INTO times_futebol (nome, faturamento_anual) VALUES ('Corinthians', 1111000000.0);
INSERT INTO times_futebol (nome, faturamento_anual) VALUES ('Flamengo', 1334000000.0);
INSERT INTO times_futebol (nome, faturamento_anual) VALUES ('São Paulo', 731900000.0);
INSERT INTO times_futebol (nome, faturamento_anual) VALUES ('Vasco', 473800000.0);
INSERT INTO times_futebol (nome, faturamento_anual) VALUES ('Palmeiras', 1274100000.0);
SELECT * FROM times_futebol;

CREATE TABLE jogadores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_time_futebol int,
    
    FOREIGN KEY(id_time_futebol) REFERENCES times_futebol(id)
);

INSERT INTO jogadores (nome, id_time_futebol) VALUES ('João', 1);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Vitor', 1);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Felipe', 2);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Vand', 2);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Lucas', 3);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Carlos', 4);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Eduardo', 4);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Gustavo', 5);
INSERT INTO jogadores (nome, id_time_futebol) VALUES ('Pedro', 5);

SELECT 
	jogadores.nome AS 'Nome do jogador',
    times_futebol.nome AS 'Time do jogardor'
    from jogadores
    inner join times_futebol on (jogadores.id_time_futebol = times_futebol.id);


DROP DATABASE IF EXISTS sistema_financeiro;
CREATE DATABASE sistema_financeiro;
USE sistema_financeiro;

CREATE TABLE categorias(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50)
);

INSERT INTO categorias (nome) VALUES ('Receitas');
INSERT INTO categorias (nome) VALUES ('Despesas fixas');
INSERT INTO categorias (nome) VALUES ('Despesas Variáveis');
INSERT INTO categorias (nome) VALUES ('Investimentos');
INSERT INTO categorias (nome) VALUES ('Contas a pagar');
INSERT INTO categorias (nome) VALUES ('Contas a receber');
INSERT INTO categorias (nome) VALUES ('Caixa');
INSERT INTO categorias (nome) VALUES ('Metas financeiras');
INSERT INTO categorias (nome) VALUES ('Relatórios e indicadores');
INSERT INTO categorias (nome) VALUES ('Categorias de Usuários');

SELECT * FROM categorias;

CREATE TABLE entradas(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria INT,
    nome VARCHAR(50), 
    valor DOUBLE,
    
    FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);

INSERT INTO entradas (id_categoria, nome, valor) VALUES (6, 'Aluguel', 10000.00);
INSERT INTO entradas (id_categoria, nome, valor) VALUES (6, 'Salario', 15000.00);
INSERT INTO entradas (id_categoria, nome, valor) VALUES (6, 'Dividendos', 5000.00);
INSERT INTO entradas (id_categoria, nome, valor) VALUES (6, 'Dividas externas', 10000.00);

SELECT 
	entradas.nome AS 'Nome entrada',
    entradas.valor AS 'Valor',
    categorias.nome AS 'categoria'
    from entradas
    inner join categorias on (entradas.id_categoria = categorias.id);



CREATE TABLE saidas(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria INT, 
    nome VARCHAR(50),
    valor DOUBLE,
    data_vencimento DATE,
    status VARCHAR(20),
    
    FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);

INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES (5, 'Aluguel', 5000.00, '2025-12-01', 'Pago');
INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES (5, 'Condominio', 2000.00, '2025-12-01', 'Pago');
INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES (5, 'IPVA', 1000.00, '2025-12-01', 'Pago');
INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES (5, 'Cartão de Crédito', 6000.00, '2025-12-01', 'Pago');
INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES (4, 'Investimentos', 2500.00, '2025-12-01', 'Pago');

SELECT 
	saidas.nome AS 'Nome saida',
    saidas.valor AS 'Valor',
    categorias.nome AS 'categoria'
    from saidas
    inner join categorias on (saidas.id_categoria = categorias.id);

