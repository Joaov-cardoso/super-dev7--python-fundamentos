DROP DATABASE IF EXISTS assistencia_tecnica;
CREATE DATABASE assistencia_tecnica;
USE assistencia_tecnica;

CREATE TABLE pecas_reposicao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

INSERT INTO pecas_reposicao(nome) VALUES
("Fonte de alimentação ATX"),
("Cooler/ventoinha 120 mm"),
("Cabo USB tipo C"),
("Bateria de celular"),
("Display LCD + touch"),
("Placa de carregamento"),
("Módulo de memória RAM (8 GB)"),
("SSD 240 GB"),
("Conector de carga (DC Jack / USB)"),
("Teclado de notebook (modelo universal)");

SELECT * FROM pecas_reposicao;

-- Ordem decrescente
SELECT id, nome FROM pecas_reposicao ORDER BY nome desc;

-- Ordem crescente
SELECT id, nome FROM pecas_reposicao ORDER BY nome asc;

-- Limitando registros
SELECT * FROM pecas_reposicao LIMIT 5;

-- Consultar as peças filtrando por id maior que 3
SELECT * FROM pecas_reposicao WHERE id > 3;

-- Consultar que começa com memoria
SELECT * FROM pecas_reposicao WHERE nome LIKE "Memoria%";

-- Consultar as peças filtrando por nome que termine com "HD"
SELECT * FROM pecas_reposicao WHERE nome LIKE "%HD";

-- Consultar as peças filtrando por nome que contenha a palavra "Placa"
SELECT * FROM pecas_reposicao WHERE nome LIKE "%placa%";

# 12 - Consultar as peças filtrando por id entre 2 e 7
SELECT * from pecas_reposicao WHERE id > 2 AND id < 7;

# 13 - Consultar a quantidade total de peças cadastradas
SELECT COUNT(*) FROM pecas_reposicao;

# 14 - Consultar as peças filtrando por nome que contenha a palavra "HD" ou "SSD"
SELECT * FROM pecas_reposicao WHERE nome LIKE "%HD%" OR nome LIKE "%SSD%";

# 15 - Consultar as peças exibindo apenas o nome sem o id
SELECT nome FROM pecas_reposicao;

# 16 - Consultar as peças onde o nome tenha mais de 10 caracteres
SELECT * FROM pecas_reposicao WHERE LENGTH(nome) > 10;

# 17 - Consultar as peças com o nome em letras maiúsculas
SELECT UPPER(nome) FROM pecas_reposicao;

# 18 - Consultar as peças substituindo espaços por hífens no nome (usar REPLACE)
SELECT REPLACE(nome, " ", "-") FROM pecas_reposicao;

# 19 - Consultar as peças mostrando apenas as três primeiras letras do nome (SUBSTRING)
SELECT SUBSTRING(nome, 1, 3) FROM pecas_reposicao;

# 20 - Consultar as peças que não contenham a palavra "Placa"
SELECT * FROM pecas_reposicao WHERE nome NOT LIKE "%Placa%";

# 22 - Consultar as peças com o nome em letras minúsculas
SELECT LOWER(nome) FROM pecas_reposicao;

# 23 - Consultar as peças onde o id seja diferente de 5
SELECT * FROM pecas_reposicao WHERE id != 5;

# 24 - Consultar as peças e ordenar por tamanho do nome (LENGTH)
SELECT * FROM pecas_reposicao ORDER BY LENGTH(nome);

# 25 - Adicionar uma coluna chamada "tipo" na tabela "pecas_reposicao"
ALTER TABLE pecas_reposicao ADD COLUMN tipo VARCHAR(50);

# 26 - Atualizar todos os registros classificando nas de acordo com os seguintes tipos: "Memória", "Processador", "Placa de Vídeo", "SSD", "Fonte", "Placa Mãe"
UPDATE pecas_reposicao SET tipo = "Fonte" WHERE id = 1;
UPDATE pecas_reposicao SET tipo = "Fonte" WHERE id = 2;
UPDATE pecas_reposicao SET tipo = "" WHERE id = 3;
UPDATE pecas_reposicao SET tipo = "" WHERE id = 4;
UPDATE pecas_reposicao SET tipo = "Placa de Vídeo" WHERE id = 5;
UPDATE pecas_reposicao SET tipo = "Placa de Víde" WHERE id = 6;
UPDATE pecas_reposicao SET tipo = "Memória" WHERE id = 7;
UPDATE pecas_reposicao SET tipo = "Memória" WHERE id = 8;
UPDATE pecas_reposicao SET tipo = "" WHERE id = 9;
UPDATE pecas_reposicao SET tipo = "" WHERE id = 10;

# 27 - Consultar as peças filtrando por tipo cada um dos tipos "Memória", "Processador"... Serão 6 consultas
SELECT * FROM pecas_reposicao WHERE tipo = "Memória";
SELECT * FROM pecas_reposicao WHERE tipo = "Processador";
SELECT * FROM pecas_reposicao WHERE tipo = "Placa de Vídeo";
SELECT * FROM pecas_reposicao WHERE tipo = "SSD";
SELECT * FROM pecas_reposicao WHERE tipo = "Fonte";
SELECT * FROM pecas_reposicao WHERE tipo = "Placa Mãe";

# 31 - Adicionar uma coluna chamada "quantidade" na tabela "pecas_reposicao"
ALTER TABLE pecas_reposicao ADD COLUMN quantidade INT;

# 32 - Atualizar a quantidade de todas as peças para 10
UPDATE pecas_reposicao SET quantidade = 10;

# 33 - Consultar as peças com quantidade maior que 10
SELECT * FROM pecas_reposicao WHERE quantidade >10;

# 34 - Atualizar registro por registro definindo as seguintes quantidades: 
#       5 para id 1
UPDATE pecas_reposicao SET quantidade = 5 WHERE id = 1;
#       20 para id 2
UPDATE pecas_reposicao SET quantidade = 20 WHERE id = 2;
#       39 para id 3
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 3;
#       1 para id 4
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 4;
#       24 para id 5
UPDATE pecas_reposicao SET quantidade = 24 WHERE id = 5;
#       39 para id 6
UPDATE pecas_reposicao SET quantidade = 29 WHERE id = 6;
#       12 para id 7
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 7;
#       34 para id 8
UPDATE pecas_reposicao SET quantidade = 34 WHERE id = 8;
#       12 para id 9
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 9;
#       0 para id 10
UPDATE pecas_reposicao SET quantidade = 0 WHERE id = 10;
#       1 para id 11
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 11;

# 35 - Consultar as peças cujo nome contenha a letra "e"
SELECT * FROM pecas_reposicao WHERE nome LIKE "%E%";

# 36 - Consultar as peças cujo nome contenha a letra "a"7
SELECT * FROM pecas_reposicao WHERE nome LIKE "%A%";

# 37 - Adicionar uma coluna chamada "preco" na tabela "pecas_reposicao"
ALTER TABLE pecas_reposicao ADD COLUMN preco DOUBLE;

# 38 - Atualizar o preço das peças definindo os seguintes valores:
#       R$ 13,39 para id 1
UPDATE pecas_reposicao SET preco = 13.99 WHERE id = 1;
#       R$ 24,99 para id 2
UPDATE pecas_reposicao SET preco = 24.99 WHERE id = 2;
#       R$ 12,99 para id 3
UPDATE pecas_reposicao SET preco = 12.99 WHERE id = 3;
#       R$ 19,99 para id 4
UPDATE pecas_reposicao SET preco = 19.99 WHERE id = 4;
#       R$ 29,99 para id 5
UPDATE pecas_reposicao SET preco = 29.99 WHERE id = 5;
#       R$ 39,99 para id 6
UPDATE pecas_reposicao SET preco = 39.99 WHERE id = 6;
#       R$ 49,99 para id 7
UPDATE pecas_reposicao SET preco = 49.99 WHERE id = 7;
#       R$ 59,99 para id 8
UPDATE pecas_reposicao SET preco = 59.99 WHERE id = 8;
#       R$ 69,99 para id 9
UPDATE pecas_reposicao SET preco = 69.99 WHERE id = 9;
#       R$ 79,99 para id 10
UPDATE pecas_reposicao SET preco = 79.99 WHERE id = 10;
#       R$ 89,99 para id 11
UPDATE pecas_reposicao SET preco = 89.99 WHERE id = 11;

# 39 - Consultar o valor total de todas as peças
SELECT SUM(preco) AS "Valor total de todas as pecas" FROM pecas_reposicao;

# 40 - Consultar o valor total de todas as peças filtrando por tipo cada um dos tipos "Memória", "Processador"... Serão 6 consultas
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "Memória";
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "Processador";
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "Placa de Video";
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "SSD";
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "Fonte";
SELECT SUM(preco) AS "Valor total de todas as pecas Tipo memoria" FROM pecas_reposicao WHERE tipo = "Placa Mae";

# 41 - Consultar o menor valor de todas as peças
SELECT MIN(preco) AS "Preço mais barata" FROM pecas_reposicao;

# 42 - Consultar o maior valor de todas as peças
SELECT MAX(preco) AS "Preco mais caro" FROM pecas_reposicao;

# 43 - Consultar a média de todos os valores
SELECT AVG(preco) AS "Media dos precos" FROM pecas_reposicao;

# 44 - Alterar a tabela e adicionar uma coluna de date chamada "data_pedido"
ALTER TABLE pecas_reposicao ADD COLUMN data_pedido DATE;

# 45 - Inserir uma nova peça de reposição com os seguintes valores:
#       nome: "Processador Intel Core i7"
#       tipo: "Processador"
#       quantidade: 10
#       preco: 19,99
#       data_pedido: 2023-01-01
INSERT INTO pecas_reposicao(nome, tipo, quantidade, preco, data_pedido) VALUES ("Processador Intel Core i7", "Processador", 20, 19.99, "2023-01-01");


# 46 - Atualizar todos as peças definindo a data de pedido para as seguintes datas abaixo:
UPDATE pecas_reposicao SET data_pedido = '2025-11-01' WHERE id = 1;

UPDATE pecas_reposicao SET data_pedido = '2025-10-28' WHERE id = 2;

UPDATE pecas_reposicao SET data_pedido = '2025-09-15' WHERE id = 3;

UPDATE pecas_reposicao SET data_pedido = '2025-08-22' WHERE id = 4;

UPDATE pecas_reposicao SET data_pedido = '2025-07-29' WHERE id = 5;

UPDATE pecas_reposicao SET data_pedido = '2025-06-06' WHERE id = 6;

UPDATE pecas_reposicao SET data_pedido = '2025-05-04' WHERE id = 7;

UPDATE pecas_reposicao SET data_pedido = '2025-04-05' WHERE id = 8;

UPDATE pecas_reposicao SET data_pedido = '2025-03-07' WHERE id = 9;

UPDATE pecas_reposicao SET data_pedido = '2025-02-04' WHERE id = 10;

UPDATE pecas_reposicao SET data_pedido = '2025-01-07' WHERE id = 11;

# 47 - Consultar todas as colunas ordenando por valor, não utilizar wildcard (procurar no google)
SELECT id, nome, quantidade, preco, tipo, data_pedido FROM pecas_reposicao ORDER BY preco;


# TABELA CLIENTES
DROP DATABASE IF EXISTS clientes;
CREATE DATABASE clientes;
USE clientes;

# 48 - Criar uma tabela chamada "clientes" com os campos: id, nome
CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

# 49 - Inserir 10 registros de clientes com os seguintes nomes:
#       Ana Paula Silva
#       João Carlos Santos
#       Maria Oliveira
#       Pedro Henrique Costa
#       Juliana Alves
#       Roberto Ferreira
#       Carla Souza
#       Lucas Rodrigues
#       Fernanda Lima
#       Marcos Antônio Pereira
INSERT INTO clientes(nome) VALUES
("Ana Paula Silva"),
("João Carlos Santos"),
("Maria Oliveira"),
("Pedro Henrique Costa"),
("Juliana Alves"),
("Roberto Ferreira"),
("Carla Souza"),
("Lucas Rodrigues"),
("Fernanda Lima"),
("Marcos Antônio Pereira");

# 50 - Consultar todos os clientes
SELECT * FROM clientes;

# 51 - Consultar os clientes ordenando por nome em ordem crescente
SELECT * FROM clientes ORDER BY nome asc;

# 52 - Consultar os clientes ordenando por nome em ordem decrescente
SELECT * FROM clientes ORDER BY nome desc;

# 53 - Consultar os clientes limitando a 3 registros
SELECT * FROM clientes LIMIT 3;

# 54 - Consultar os clientes filtrando por id maior que 5
SELECT * FROM clientes WHERE id > 5;

# 55 - Consultar os clientes filtrando por nome que comece com a letra "A"
SELECT * FROM clientes WHERE nome LIKE "A%";

# 56 - Consultar os clientes filtrando por nome que termine com a letra "a"
SELECT * FROM clientes WHERE nome LIKE "%a";

# 57 - Consultar os clientes filtrando por nome que contenha a palavra "Silva"
SELECT * FROM clientes WHERE nome LIKE "%Silva%";

# 58 - Consultar os clientes filtrando por id entre 3 e 8
SELECT * FROM clientes WHERE id > 3 AND id < 8;

# 59 - Consultar a quantidade total de clientes cadastrados
SELECT COUNT(*) FROM clientes;

# 60 - Consultar os clientes filtrando por nome que contenha "Maria" ou "João"
SELECT *  FROM clientes WHERE nome LIKE "%Maria%" OR nome LIKE "%João%";

# 61 - Consultar os clientes exibindo apenas o nome sem o id
SELECT nome FROM clientes;

# 62 - Consultar os clientes onde o nome tenha mais de 15 caracteres
SELECT * FROM clientes WHERE LENGTH(nome) > 15;

# 63 - Consultar os clientes com o nome em letras maiúsculas
SELECT id, UPPER(nome) FROM clientes;

# 64 - Consultar os clientes substituindo espaços por underline no nome (usar REPLACE)
SELECT id, REPLACE(nome, ' ', '_') FROM clientes;

# 65 - Consultar os clientes mostrando apenas as cinco primeiras letras do nome (SUBSTRING)
SELECT id, SUBSTRING(nome, 1, 5) FROM clientes;

# 66 - Consultar os clientes que não contenham a palavra "Santos"
SELECT * FROM clientes WHERE nome NOT LIKE "%Santos%";

# 67 - Consultar os clientes com o nome em letras minúsculas
SELECT id, LOWER(nome) FROM clientes;

# 68 - Consultar os clientes onde o id seja diferente de 7
SELECT * FROM clientes WHERE id != 7;

# 69 - Consultar os clientes e ordenar por tamanho do nome (LENGTH)
SELECT * FROM clientes ORDER BY LENGTH(nome);

# 70 - Adicionar uma coluna chamada "telefone" na tabela "clientes"
ALTER TABLE clientes ADD COLUMN telefone VARCHAR(20);

# 71 - Atualizar todos os clientes definindo os seguintes telefones:
#       (11) 98765-4321 para id 1
UPDATE CLIENTES SET telefone = '(11) 98765-4321' WHERE id = 1;
#       (21) 91234-5678 para id 2
UPDATE CLIENTES SET telefone = '(21) 91234-5678' WHERE id = 2;
#       (31) 99876-5432 para id 3
UPDATE CLIENTES SET telefone = '(31) 99876-5432' WHERE id = 3;
#       (41) 92345-6789 para id 4
UPDATE CLIENTES SET telefone = '(41) 92345-6789' WHERE id = 4;
#       (51) 93456-7890 para id 5
UPDATE CLIENTES SET telefone = '(51) 93456-7890' WHERE id = 5;
#       (61) 94567-8901 para id 6
UPDATE CLIENTES SET telefone = '(61) 94567-8901' WHERE id = 6;
#       (71) 95678-9012 para id 7
UPDATE CLIENTES SET telefone = '(71) 95678-9012' WHERE id = 7;
#       (81) 96789-0123 para id 8
UPDATE CLIENTES SET telefone = '(81) 96789-0123' WHERE id = 8;
#       (91) 97890-1234 para id 9
UPDATE CLIENTES SET telefone = '(91) 97890-1234' WHERE id = 9;
#       (11) 98901-2345 para id 10
UPDATE CLIENTES SET telefone = '(11) 98901-2345' WHERE id = 10;

# 72 - Consultar os clientes filtrando por telefone que comece com "(11)"
SELECT * FROM clientes WHERE telefone LIKE '(11)%';

# 73 - Consultar os clientes filtrando por telefone que contenha "9876"
SELECT * FROM clientes WHERE telefone LIKE '%9876%';

# 74 - Adicionar uma coluna chamada "email" na tabela "clientes"
ALTER TABLE clientes ADD COLUMN email VARCHAR(50);

# 75 - Atualizar todos os clientes definindo os seguintes emails:
#       ana.silva@gmail.com para id 1
UPDATE clientes SET email = 'ana.silva@gmail.com' WHERE id = 1;
#       joao.santos@hotmail.com para id 2
UPDATE clientes SET email = 'joao.santos@hotmail.com' WHERE id = 2;
#       maria.oliveira@yahoo.com.br para id 3
UPDATE clientes SET email = 'maria.oliveira@yahoo.com.b' WHERE id = 3;
#       pedro.costa@gmail.com para id 4
UPDATE clientes SET email = 'pedro.costa@gmail.com' WHERE id = 4;
#       juliana.alves@outlook.com para id 5
UPDATE clientes SET email = 'juliana.alves@outlook.com' WHERE id = 5;
#       roberto.ferreira@gmail.com para id 6
UPDATE clientes SET email = 'roberto.ferreira@gmail.com' WHERE id = 6;
#       carla.souza@hotmail.com para id 7
UPDATE clientes SET email = 'carla.souza@hotmail.com' WHERE id = 7;
#       lucas.rodrigues@gmail.com para id 8
UPDATE clientes SET email = 'lucas.rodrigues@gmail.com' WHERE id = 8;
#       fernanda.lima@yahoo.com.br para id 9
UPDATE clientes SET email = 'fernanda.lima@yahoo.com.br' WHERE id = 9;
#       marcos.pereira@outlook.com para id 10
UPDATE clientes SET email = 'marcos.pereira@outlook.com' WHERE id = 10;

# 76 - Consultar os clientes filtrando por email que contenha "@gmail.com"
SELECT * FROM clientes WHERE email LIKE "%@gmail.com%";

# 77 - Consultar os clientes filtrando por email que termine com ".com.br"
SELECT * FROM clientes WHERE email LIKE "%.com.br";

# 78 - Adicionar uma coluna chamada "cidade" na tabela "clientes"
ALTER TABLE clientes ADD COLUMN cidade VARCHAR(50);


# 79 - Atualizar todos os clientes definindo as seguintes cidades:
#       São Paulo para id 1
UPDATE clientes SET cidade = 'São Paulo' WHERE id = 1;
#       Rio de Janeiro para id 2
UPDATE clientes SET cidade = 'Rio de Janeiro' WHERE id = 2;
#       Belo Horizonte para id 3
UPDATE clientes SET cidade = 'Belo Horizonte' WHERE id = 3;
#       Curitiba para id 4
UPDATE clientes SET cidade = 'Curitiba' WHERE id = 4;
#       Porto Alegre para id 5
UPDATE clientes SET cidade = 'Porto Alegre' WHERE id = 5;
#       Brasília para id 6
UPDATE clientes SET cidade = 'Brasilia' WHERE id = 6;
#       Salvador para id 7
UPDATE clientes SET cidade = 'Salvador' WHERE id = 7;
#       Recife para id 8
UPDATE clientes SET cidade = 'Recife' WHERE id = 8;
#       Belém para id 9
UPDATE clientes SET cidade = 'Belém' WHERE id = 9;
#       São Paulo para id 10
UPDATE clientes SET cidade = 'São Paulo' WHERE id = 10;

# 80 - Consultar os clientes filtrando por cidade "São Paulo"
SELECT * FROM clientes WHERE cidade = 'São Paulo';

# 81 - Adicionar uma coluna chamada "data_cadastro" do tipo date na tabela "clientes"
ALTER TABLE clientes ADD COLUMN data_cadastro DATE;

# 82 - Atualizar todos os clientes definindo as seguintes datas de cadastro:
#       15/11/2024 para id 1
UPDATE clientes SET data_cadastro = '2024-11-15' WHERE id = 1;
#       20/10/2024 para id 2
UPDATE clientes SET data_cadastro = '2024-10-20' WHERE id = 2;
#       10/09/2024 para id 3
UPDATE clientes SET data_cadastro = '2024-09-10' WHERE id = 3;
#       25/08/2024 para id 4
UPDATE clientes SET data_cadastro = '2024-07-30' WHERE id = 4;
#       30/07/2024 para id 5
UPDATE clientes SET data_cadastro = '2024-07-30' WHERE id = 5;
#       12/06/2024 para id 6
UPDATE clientes SET data_cadastro = '2024-06-12' WHERE id = 6;
#       18/05/2024 para id 7
UPDATE clientes SET data_cadastro = '2024-05-18' WHERE id = 7;
#       22/04/2024 para id 8
UPDATE clientes SET data_cadastro = '2024-04-22' WHERE id = 8;
#       14/03/2024 para id 9
UPDATE clientes SET data_cadastro = '2024-03-14' WHERE id = 9;
#       28/02/2024 para id 10
UPDATE clientes SET data_cadastro = '2024-02-28' WHERE id = 10;

# 83 - Consultar os clientes cadastrados no mês de novembro
SELECT * FROM clientes WHERE MONTH(data_cadastro) = 11;

# 84 - Consultar os clientes cadastrados entre 01/03/2024 e 30/06/2024
SELECT * FROM clientes WHERE data_cadastro BETWEEN '2024-03-01' AND '2024-06-30';

# 85 - Consultar os clientes ordenando pela data de cadastro mais recente primeiro
SELECT * FROM clientes ORDER BY data_cadastro asc;

# 86 - Consultar o ano da data de cadastro de todos os clientes (usar YEAR)
SELECT YEAR(data_cadastro) FROM clientes;

# 87 - Consultar o mês da data de cadastro de todos os clientes (usar MONTH)
SELECT MONTH(data_cadastro) FROM clientes;

# 88 - Consultar o dia da data de cadastro de todos os clientes (usar DAY)
SELECT DAY(data_cadastro) FROM clientes;

# 89 - Consultar o nome do mês da data de cadastro em português (usar DATE_FORMAT com %M)
SET lc_time_names = 'pt_BR';
SELECT nome, DATE_FORMAT(data_cadastro, '%M') FROM clientes;

# 90 - Consultar o nome do dia da semana da data de cadastro (usar DATE_FORMAT com %W)
SELECT nome, DATE_FORMAT(data_cadastro, '%W') FROM clientes;

# 91 - Consultar a data de cadastro formatada como DD/MM/YYYY (usar DATE_FORMAT)
SELECT id, nome, DATE_FORMAT(data_cadastro, '%d/%m/%Y') FROM clientes;

# 92 - Consultar quantos dias se passaram desde o cadastro de cada cliente (usar DATEDIFF com data atual)
SELECT id, nome, DATEDIFF(CURDATE(), data_cadastro) FROM clientes;

# 93 - Consultar os clientes cadastrados há mais de 180 dias
SELECT id, nome, DATEDIFF(CURDATE(), data_cadastro) FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) > 180;

# 94 - Consultar os clientes cadastrados há menos de 90 dias
SELECT id, nome, DATEDIFF(CURDATE(), data_cadastro) FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) < 90;

# 95 - Consultar a data de cadastro adicionando 30 dias (usar DATE_ADD)
SELECT id, nome, DATE_ADD(data_cadastro, INTERVAL 30 DAY) FROM clientes;

# 96 - Consultar a data de cadastro subtraindo 15 dias (usar DATE_SUB)
SELECT id, nome, DATE_SUB(data_cadastro, INTERVAL 15 DAY) FROM clientes;

# 97 - Consultar os clientes que se cadastraram em dias pares do mês
SELECT * FROM clientes WHERE MOD(DAY(data_cadastro), 2) = 0;

# 98 - Consultar os clientes que se cadastraram em dias ímpares do mês
SELECT * FROM clientes WHERE MOD(DAY(data_cadastro), 2) != 0;

# 99 - Consultar os clientes formatando a data como "Mês Ano" exemplo: "Novembro 2024" (usar DATE_FORMAT)
SELECT id, nome, DATE_FORMAT(data_cadastro, '%M %Y') FROM clientes;

# 100 - Adicionar uma coluna chamada "status" na tabela "clientes"
ALTER TABLE clientes ADD COLUMN status VARCHAR(30);

# 101 - Atualizar todos os clientes definindo os seguintes status:
#       Ativo para id 1
UPDATE clientes SET status = 'Ativo' WHERE id = 1;
#       Ativo para id 2
UPDATE clientes SET status = 'Ativo' WHERE id = 2;
#       Pendente para id 3
UPDATE clientes SET status = 'Pendente' WHERE id = 3;
#       Ativo para id 4
UPDATE clientes SET status = 'Ativo' WHERE id = 4;
#       Inativo para id 5
UPDATE clientes SET status = 'Inativo' WHERE id = 5;
#       Ativo para id 6
UPDATE clientes SET status = 'Ativo' WHERE id = 6;
#       Ativo para id 7
UPDATE clientes SET status = 'Ativo' WHERE id = 7;
#       Pendente para id 8
UPDATE clientes SET status = 'Pendente' WHERE id = 8;
#       Ativo para id 9
UPDATE clientes SET status = 'Ativo' WHERE id = 9;
#       Inativo para id 10
UPDATE clientes SET status = 'Inativo' WHERE id = 10;

# 102 - Consultar os clientes filtrando por status "Ativo"
SELECT * FROM clientes WHERE status = "Ativo";

# 103 - Consultar os clientes filtrando por status "Inativo" ou "Pendente"
SELECT * FROM clientes WHERE status = "Inativo" OR status = "Pendente";

# 104 - Adicionar uma coluna chamada "cpf" na tabela "clientes"
ALTER TABLE clientes ADD COLUMN cpf VARCHAR(30);

# 105 - Atualizar todos os clientes definindo os seguintes CPFs:
#       123.456.789-01 para id 1
UPDATE clientes SET cpf = '123.456.789-01' WHERE id = 1;
#       234.567.890-12 para id 2
UPDATE clientes SET cpf = '234.567.890-12' WHERE id = 2;
#       345.678.901-23 para id 3
UPDATE clientes SET cpf = '345.678.901-23' WHERE id = 3;
#       456.789.012-34 para id 4
UPDATE clientes SET cpf = '456.789.012-34' WHERE id = 4;
#       567.890.123-45 para id 5
UPDATE clientes SET cpf = '567.890.123-45' WHERE id = 5;
#       678.901.234-56 para id 6
UPDATE clientes SET cpf = '678.901.234-56' WHERE id = 6;
#       789.012.345-67 para id 7
UPDATE clientes SET cpf = '789.012.345-67' WHERE id = 7;
#       890.123.456-78 para id 8
UPDATE clientes SET cpf = '890.123.456-78' WHERE id = 8;
#       901.234.567-89 para id 9
UPDATE clientes SET cpf = '901.234.567-89' WHERE id = 9;
#       012.345.678-90 para id 10
UPDATE clientes SET cpf = '012.345.678-90' WHERE id = 10;

# 106 - Consultar os clientes filtrando por CPF que comece com "123"
SELECT * FROM clientes WHERE cpf LIKE '123%';

# 107 - Consultar os clientes onde o CPF contenha "456"
SELECT * FROM clientes WHERE cpf LIKE '%456%';

# 108 - Adicionar uma coluna chamada "total_gasto" do tipo decimal na tabela "clientes"
ALTER TABLE clientes ADD COLUMN total_gasto DOUBLE;

# 109 - Atualizar o total gasto dos clientes definindo os seguintes valores:
#       R$ 1.250,00 para id 1
UPDATE clientes SET total_gasto = 1250.00 WHERE id = 1;
#       R$ 890,50 para id 2
UPDATE clientes SET total_gasto = 890.50 WHERE id = 2;
#       R$ 2.340,00 para id 3
UPDATE clientes SET total_gasto = 2340.00 WHERE id = 3;
#       R$ 560,00 para id 4
UPDATE clientes SET total_gasto = 560.00 WHERE id = 4;
#       R$ 3.120,75 para id 5
UPDATE clientes SET total_gasto = 3120.75 WHERE id = 5;
#       R$ 780,00 para id 6
UPDATE clientes SET total_gasto = 780.00 WHERE id = 6;
#       R$ 1.890,00 para id 7
UPDATE clientes SET total_gasto = 1890.00 WHERE id = 7;
#       R$ 450,00 para id 8
UPDATE clientes SET total_gasto = 450.00 WHERE id = 8;
#       R$ 2.670,00 para id 9
UPDATE clientes SET total_gasto = 2670.00 WHERE id = 9;
#       R$ 1.100,00 para id 10
UPDATE clientes SET total_gasto = 1100.00 WHERE id = 10;

# 110 - Consultar o valor total gasto por todos os clientes
SELECT SUM(total_gasto) AS "Soma total gasto" FROM clientes;

# 111 - Consultar o menor valor gasto entre todos os clientes
SELECT MIN(total_gasto) AS "Menor total gasto" FROM clientes;

# 112 - Consultar o maior valor gasto entre todos os clientes
SELECT MAX(total_gasto) AS "Maior total gasto" FROM clientes;

# 113 - Consultar a média de valores gastos por todos os clientes
SELECT AVG(total_gasto) AS "Media total gasto" FROM clientes;

# 114 - Consultar os clientes com total gasto maior que R$ 1.000,00
SELECT * FROM clientes WHERE total_gasto > 1000.00;

# 115 - Consultar os clientes com total gasto menor que R$ 1.000,00
SELECT * FROM clientes WHERE total_gasto < 1000.00;

# 116 - Consultar os clientes ordenando pelo total gasto em ordem decrescente
SELECT * FROM clientes ORDER BY total_gasto ASC;

# 117 - Consultar os 5 clientes que mais gastaram
SELECT * FROM clientes ORDER BY total_gasto desc LIMIT 5;

# 118 - Adicionar uma coluna chamada "data_ultima_compra" do tipo date na tabela "clientes"
ALTER TABLE clientes ADD COLUMN data_ultima_compra DATE;

# 119 - Atualizar a data da última compra dos clientes definindo as seguintes datas:
#       10/11/2024 para id 1
UPDATE clientes SET data_ultima_compra = '2024-11-10' WHERE id = 1;
#       15/11/2024 para id 2
UPDATE clientes SET data_ultima_compra = '2024-11-15' WHERE id = 2;
#       20/10/2024 para id 3
UPDATE clientes SET data_ultima_compra = '2024-10-20' WHERE id = 3;
#       05/09/2024 para id 4
UPDATE clientes SET data_ultima_compra = '2024-09-05' WHERE id = 4;
#       18/08/2024 para id 5
UPDATE clientes SET data_ultima_compra = '2024-08-18' WHERE id = 5;
#       22/07/2024 para id 6
UPDATE clientes SET data_ultima_compra = '2024-07-22' WHERE id = 6;
#       30/06/2024 para id 7
UPDATE clientes SET data_ultima_compra = '2024-06-30' WHERE id = 7;
#       12/05/2024 para id 8
UPDATE clientes SET data_ultima_compra = '2024-05-12' WHERE id = 8;
#       08/04/2024 para id 9
UPDATE clientes SET data_ultima_compra = '2024-04-08' WHERE id = 9;
#       25/03/2024 para id 10
UPDATE clientes SET data_ultima_compra = '2024-03-25' WHERE id = 10;

# 120 - Consultar os clientes que fizeram a última compra há mais de 120 dias
SELECT id, nome, DATEDIFF(CURDATE(), data_ultima_compra) FROM clientes WHERE DATEDIFF(CURDATE(), data_ultima_compra) > 120;

# 121 - Consultar os clientes que fizeram a última compra no mesmo mês do cadastro
# 122 - Consultar a diferença em dias entre a data de cadastro e a última compra de cada cliente
# 123 - Consultar os clientes cadastrados em 2024
# 124 - Consultar os clientes cadastrados no primeiro semestre (janeiro a junho)
# 125 - Consultar os clientes cadastrados no segundo semestre (julho a dezembro)
# 126 - Consultar a data da última compra formatada como "DD de Mês de YYYY" exemplo: "10 de Novembro de 2024"
# 127 - Consultar os clientes onde o mês da última compra seja igual ao mês atual
# 128 - Consultar os clientes ordenando pela diferença entre cadastro e última compra (do maior para o menor)
# 129 - Consultar o trimestre da data de cadastro (usar QUARTER)
# 130 - Consultar os clientes cadastrados no mesmo trimestre
# 131 - Atualizar a data_ultima_compra para NULL do cliente com id 10 (simulando cliente que nunca comprou)
# 132 - Consultar os clientes que nunca compraram (data_ultima_compra NULL)
# 133 - Consultar a semana do ano em que cada cliente se cadastrou (usar WEEK)
# 134 - Consultar os clientes cujo nome contenha a letra "e"
# 135 - Consultar os clientes cujo email contenha "gmail" ou "hotmail"
# 136 - Atualizar o status para "Inativo" dos clientes com total gasto igual a zero
# 137 - Consultar os clientes filtrando por cidade ordenando por total gasto decrescente
# 138 - Consultar o dia do ano em que cada cliente se cadastrou (usar DAYOFYEAR)
# 139 - Consultar os clientes que se cadastraram em finais de semana (usar DAYOFWEEK)
# 140 - Consultar a data de cadastro no formato "AAAA-MM" para agrupar visualmente por mês/ano
# 141 - Consultar os clientes adicionando 1 ano à data de cadastro (aniversário de cliente)
# 142 - Consultar os clientes onde o ano da última compra seja diferente do ano de cadastro
# 143 - Consultar a data e hora atual do sistema (usar NOW)
# 144 - Consultar apenas a data atual do sistema (usar CURDATE)
# 145 - Consultar apenas o horário atual do sistema (usar CURTIME)
# 146 - Consultar todas as colunas dos clientes ordenando por data de cadastro, não utilizar wildcard
# 147 - Inserir um novo cliente com os seguintes valores:
#       nome: "Carlos Alberto Mendes"
#       telefone: "(85) 99123-4567"
#       email: "carlos.mendes@email.com"
#       cidade: "Fortaleza"
#       data_cadastro: 2024-12-01
#       status: "Ativo"
#       cpf: "987.654.321-00"
#       total_gasto: 1500.00
#       data_ultima_compra: 2024-12-15
# 148 - Consultar o último dia do mês de cadastro de cada cliente (usar LAST_DAY)
# 149 - Consultar os clientes convertendo a data de cadastro para timestamp (usar UNIX_TIMESTAMP)
# 150 - Consultar os clientes exibindo há quantos meses cada um se cadastrou (usar TIMESTAMPDIFF)
# 151 - Consultar os clientes que se cadastraram em meses com 31 dias
# 152 - Consultar os clientes exibindo a idade do cadastro em anos completos (usar TIMESTAMPDIFF com YEAR)
# 153 - Consultar a data de cadastro adicionando 6 meses (usar DATE_ADD com MONTH)
# 154 - Consultar os clientes onde a diferença entre cadastro e última compra seja menor que 30 dias
# 155 - Consultar os clientes formatando a data de cadastro como "Nome_do_Dia, DD/MM/YYYY"