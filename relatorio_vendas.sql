CREATE TABLE vendedores (
    id_vendedor INT PRIMARY KEY,
    nome VARCHAR(100),
    setor VARCHAR(50)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_vendedor INT,
    produto VARCHAR(100),
    quantidade INT,
    valor_total DECIMAL(10,2),
    data_venda DATE,
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

INSERT INTO vendedores
VALUES
(1, 'Marcos', 'Tecnologia'),
(2, 'Juliana', 'Eletrônicos');

INSERT INTO vendas
VALUES
(1, 1, 'Notebook', 2, 7000.00, '2025-05-01'),
(2, 2, 'Monitor', 3, 4500.00, '2025-05-02'),
(3, 1, 'Mouse Gamer', 5, 600.00, '2025-05-03');

SELECT
    v.nome,
    ve.produto,
    ve.quantidade,
    ve.valor_total
FROM vendas ve
INNER JOIN vendedores v
ON ve.id_vendedor = v.id_vendedor;

SELECT
    SUM(valor_total) AS faturamento_total
FROM vendas;

SELECT
    produto,
    MAX(valor_total) AS maior_venda
FROM vendas
GROUP BY produto;
