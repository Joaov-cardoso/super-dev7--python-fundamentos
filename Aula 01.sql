-- Criar o banco de dados
CREATE DATABASE locadora;

-- Selecionar o banco de dados
USE locadora;

-- Consultar tabelas
SHOW TABLES;

-- Criar tabela
CREATE TABLE usuarios(
	id INT,
    nome VARCHAR(30) -- pode ter até 30 caracteres
);

-- Inserir registro
INSERT INTO usuarios(id, nome) VALUE (1, "Carlos");

-- Consultar registro
SELECT id, nome FROM usuarios;

INSERT INTO usuarios(id, nome) VALUE (2, "Leidiane");
INSERT INTO usuarios(id, nome) VALUE (3, "Vand");
INSERT INTO usuarios(id, nome) VALUE (4, "João Vitor");
INSERT INTO usuarios(id, nome) VALUE (5, "Felipe");
INSERT INTO usuarios(id, nome) VALUE (6, "John");
INSERT INTO usuarios(id, nome) VALUE (7, "Vitor");
INSERT INTO usuarios(id, nome) VALUE (8, "Joshua");
INSERT INTO usuarios(id, nome) VALUE (9, "Gustavo");

-- Apagar o registro do Carlos
DELETE FROM usuarios WHERE id = 1;

-- Consultar os registros
SELECT id, nome FROM usuarios;

-- Alterar o nome de um registro
UPDATE usuarios SET nome = "Carlos da Silva" WHERE id = 1;

CREATE TABLE filmes(
	id INT,
    titulo VARCHAR(30),
    autor VARCHAR(30),
    classificacao INT,
    genero VARCHAR(30)
);

INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(1, "A lagoa azul", "Randal Kleiser", 16, "Drama");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(2, "Exterminador do futuro", "James Cameron", 18, "Açao");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(3, "Vingadores Ultimato", "Antony e Joe Russo", 12, "Açao");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(4, "Homem de Ferro", "Jon Favreau", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(5, "Pantera Negra", "Ryan Coogler", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(6, "Capitao America: o soldado invernal", "Antony e Joe Russo", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(7, "Liga da Justiça", "Zack Snyder", 14, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(8, "Mulher-Maravilha", "Patty Jenkins", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(9, "Batman O cavaleiro das trevas", "Christopher Nolan", 14, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(10, "Aquaman", "James Wan", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(11, "Shazam", "David F. Sandbeg", 12, "Comédia");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE(12, "Thor Ragnarol", "Taika Waititi", 12, "Ação");

SELECT id, titulo, autor, classificacao, genero FROM filmes;

CREATE TABLE jogos(
	id INT,
    nome VARCHAR(50),
    faturamento DOUBLE,
    preco_unitario DOUBLE,
    data_lancamento DATE, 
    produtora VARCHAR(50),
    distribuidora VARCHAR(50),
    xbox BIT, 
    ps BIT,
    switch BIT
);

INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (1, 'Aventura Estelar', 15200000.50, 249.90, '2021-03-15', 'Nebula Studios', 'GalaxyPlay', 1, 1, 0);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (2, 'Corrida Insana 5', 9800000.00, 199.90, '2020-11-02', 'TurboSoft', 'SpeedMax', 1, 1, 1);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (3, 'Reinos Perdidos', 22350000.75, 299.90, '2022-06-10', 'Dragon Pixel', 'Epic Worlds', 0, 1, 1);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (4, 'Cyber Hunters', 17500000.20, 259.90, '2019-09-28', 'NeonForge', 'UltraGames', 1, 1, 0);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (5, 'Terra Sombria', 8700000.90, 149.90, '2018-01-19', 'Void Games', 'DarkSun', 1, 0, 1);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (6, 'Futuro Extremo', 30500000.00, 349.90, '2023-02-01', 'Quantum Labs', 'HyperCorp', 1, 1, 1);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (7, 'Mundos Místicos', 6400000.40, 129.90, '2017-12-05', 'MagicByte', 'DreamWorks', 0, 1, 1);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (8, 'Guardiões da Terra', 19800000.55, 279.90, '2021-08-22', 'TitanForge', 'WorldLine', 1, 1, 0);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (9, 'Invasão 2099', 11250000.00, 219.90, '2019-05-14', 'NovaCore', 'DigitalArts', 1, 0, 0);
INSERT INTO jogos(id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch) VALUE (10, 'Lendas do Mar', 5400000.80, 99.90, '2020-03-30', 'BlueOcean Studio', 'WaveSoft', 0, 1, 1);

SELECT id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, switch FROM jogos;

-- DELETE FROM jogos;

CREATE TABLE cds (
    id INT,
    nome VARCHAR(255),
    banda VARCHAR(255),
    duracao VARCHAR(50),
    quantidade_musicas INT,
    ano_lancamento VARCHAR(10),
    genero VARCHAR(100)
);

INSERT INTO cds VALUES (1, 'Sundowning', 'Sleep T0ken', '52:31', 12, 2019, 'Alternativ');
INSERT INTO cds VALUES (2, 'Take Me Back To Eden', 'Sleep Token', '', 12, '2023', 'Alt Metal');
INSERT INTO cds VALUES (3, 'Eternal Blue', 'Sleep Token', 'not sure', NULL, '202?', 'Metal');

INSERT INTO cds VALUES (4, 'Meteora', 'Linkin Prak', '36:43', 13, 2003, 'N-U metal');
INSERT INTO cds VALUES (5, 'Hbrid Theory', 'Linkin Park', '37:??', 12, 2000, 'Nu-metal');
INSERT INTO cds VALUES (6, 'Minutes to Midnite', 'Lincon Park', '44:34', NULL, 2007, '');

INSERT INTO cds VALUES (7, 'Holy Hell', 'Architects', '50:05', 11, '2018', 'Metalcore');
INSERT INTO cds VALUES (8, 'For Those That Wish to Exist', 'Architectts', NULL, 15, '2021', 'Metal core');
INSERT INTO cds VALUES (9, 'Lost Forever // Lost Togther', 'Architecs', '42:14', 10, '20X4', 'Metalcroe');

INSERT INTO cds VALUES (10, 'Paranoid', 'Black Sabath', '42:06', 8, 1970, 'Heavy Metal');
INSERT INTO cds VALUES (11, 'Black Sabbath', 'Black Sabbath', '38??', NULL, 1970, '');
INSERT INTO cds VALUES (12, 'Master of Reality', 'Blk Sabbath', '', 8, '1971', 'Metal');

INSERT INTO cds VALUES (13, 'The Death of Peace of Mind', 'Bad Omens', '53:44', 15, 2022, 'Metalcor');
INSERT INTO cds VALUES (14, 'Finding God Before God Finds Me', 'Bad Omens', NULL, 10, '2019', 'Meta core');
INSERT INTO cds VALUES (15, 'B A D O M E N S', 'Bad Omns', '??:??', 10, '2016', 'Rock?');

INSERT INTO cds VALUES (16, 'Inhuman Rampage', 'Dragon Force', '55:??', 8, 2005, 'Power metal');
INSERT INTO cds VALUES (17, 'Ultra Beatdown', 'DragonForce', '59:30', NULL, '', 'Power-Metal');
INSERT INTO cds VALUES (18, 'Valley of the Damed', 'Dragon F0rce', '40:12', 8, 2003, 'Powr metal');

INSERT INTO cds VALUES (19, 'The Black Parade', 'My Chemical Romnace', '51:53', 14, 2006, 'Emo rock');
INSERT INTO cds VALUES (20, 'Three Cheers for Sweet Revenge', 'My Chemicl Romance', '', NULL, 2004, 'Punk/Emo');
INSERT INTO cds VALUES (21, 'Danger Days', 'My Chemical Romance', '53min', 15, '2010', '');

INSERT INTO cds VALUES (22, 'By the Way', 'Restart', '40:15', 10, 2010, 'Pop Rock');
INSERT INTO cds VALUES (23, 'R(e)start', 'Restar', NULL, 12, '2011', 'P0p rock');
INSERT INTO cds VALUES (24, 'Renascer', 'Restart', '??', 9, '', 'Pop');

INSERT INTO cds VALUES (25, 'Millenial Rhapsody', 'Oliver Malcom', NULL, NULL, '20??', 'Alt Pop');


SELECT id, nome, banda, duracao, quantidade_musicas, ano_lancamento, genero FROM cds;

UPDATE cds SET banda = "Sleep Token" WHERE id = 1;
UPDATE cds SET duracao = "40:00" WHERE id = 2;
UPDATE cds SET ano_lancamento = "2025", duracao = "49:00" WHERE id = 3;
UPDATE cds SET banda = "Linkin Park" WHERE id = 4;
UPDATE cds SET nome = "Hybrid Theory", duracao = "37:00" WHERE id = 5;
UPDATE cds SET nome = "Minutes to Midnight", banda = "Linkin Park", quantidade_musicas = 12, genero = "Rock" WHERE id = 6;
UPDATE cds SET banda = "Architects", duracao = "1:00:00", genero = "Metalcore" WHERE id = 8;
UPDATE cds SET nome = "Lost Together", banda = "Architects", ano_lancamento = 2024, genero = "Metalcore" WHERE id = 9;
UPDATE cds SET banda = "Black Sabbath" WHERE id = 10;
UPDATE cds SET duracao = "38:57", genero = "Pagode" WHERE id = 11;
UPDATE cds SET banda = "Black Sabatth", duracao = "57:55" WHERE id = 12;
UPDATE cds SET genero = "Metalcore" WHERE id = 13;
UPDATE cds SET duracao = "43:00", genero = "Metalcore" WHERE id = 14;
UPDATE cds SET banda = "Bad Omens", duracao = "43:00" WHERE id = 15;
UPDATE cds SET duracao = "55:53" WHERE id = 16;
UPDATE cds SET quantidade_musicas = 17, ano_lancamento = 1970 WHERE id = 17;
UPDATE cds SET banda = "DragonForce", nome = "Valley of the Damned", genero = "Power Metal" WHERE id = 18;
UPDATE cds SET banda = "My Chemical Romance" WHERE id = 19;
UPDATE cds SET duracao = "1:53:32", quantidade_musicas = 20, banda = "My Chemical Romance" WHERE id = 20;
UPDATE cds SET genero = "Emo" WHERE id = 21;
UPDATE cds SET banda = "Restart", duracao = "45:00", genero = "Pop Rock" WHERE id = 23;
UPDATE cds SET ano_lancamento = 2002, duracao = "32:45" WHERE id = 24;
UPDATE cds SET banda = "Oliver Malcolm", duracao = "23:45", quantidade_musicas = 6, ano_lancamento = 2025 WHERE id = 25;