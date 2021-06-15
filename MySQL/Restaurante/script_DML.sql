-- DML (Linguagem de manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- INSERT
INSERT INTO db_restaurante.tb_funcionarios (nome, sobrenome, email, data_inicio, salario)
VALUES
('Pamela', 'Souza', 'pamela@email.com', '2020-02-01', 2100.6),
('Marcos', 'Lisboa', 'marcos@email.com', '2020-07-01', 1500.9),
('Fernando', 'Silva', 'fernando@email.com', '2020-11-11', 5100),
('Fabio', 'Pereira', 'fabio@email.com', '2021-03-01', 4100.6),
('Victor', 'Diniz', 'victor@email.com', '2020-01-01', 1100.2);

INSERT INTO tb_produtos (nome_prato, descricao_prato)
VALUES
('Macarronada Tradicional','Macarronada tradicional ao molho de tomate'),
('Macarronada Branca','Macarronada ao molho branco');

INSERT INTO db_restaurante.tb_vendas(mesa, fk_funcionario, fk_produto)
VALUES
('Mesa 11',1,2),
('Mesa10',2,3);

-- SELECT
select * from db_restaurante.tb_funcionarios;
select * from db_restaurante.tb_produtos;
select * from db_restaurante.td_vendas;


SELECT nome, sobrenome
from db_restaurante.tb_funcionarios
ORDER BY nome, ASC, sobrenome DESC

