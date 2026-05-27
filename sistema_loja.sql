CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(50)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO clientes
VALUES
(1, 'Carlos Silva', 'carlos@email.com', 'São Paulo'),
(2, 'Ana Souza', 'ana@email.com', 'Rio de Janeiro');

INSERT INTO produtos
VALUES
(1, 'Notebook', 3500.00, 15),
(2, 'Mouse Gamer', 120.00, 40),
(3, 'Teclado Mecânico', 280.00, 20);

INSERT INTO pedidos
VALUES
(1, 1, '2025-05-20', 3740.00),
(2, 2, '2025-05-21', 280.00);

INSERT INTO itens_pedido
VALUES
(1, 1, 1, 1, 3500.00),
(2, 1, 2, 2, 240.00),
(3, 2, 3, 1, 280.00);

SELECT 
    c.nome,
    p.id_pedido,
    p.valor_total
FROM clientes c
INNER JOIN pedidos p
ON c.id_cliente = p.id_cliente;

SELECT
    pr.nome_produto,
    ip.quantidade,
    ip.subtotal
FROM itens_pedido ip
INNER JOIN produtos pr
ON ip.id_produto = pr.id_produto;

SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco > 200;

SELECT
    nome,
    cidade
FROM clientes
ORDER BY nome;
