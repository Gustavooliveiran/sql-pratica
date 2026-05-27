CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

INSERT INTO produtos (id, nome, preco, estoque)
VALUES
(1, 'Notebook', 3500.00, 10),
(2, 'Mouse', 80.00, 50),
(3, 'Teclado', 150.00, 30);

SELECT * FROM produtos;

SELECT nome, preco
FROM produtos
WHERE preco > 100;
