CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

INSERT INTO funcionarios (id, nome, cargo, salario)
VALUES
(1, 'Ana', 'Analista', 4500.00),
(2, 'Lucas', 'Desenvolvedor', 6000.00),
(3, 'Fernanda', 'Suporte TI', 3200.00);

SELECT * FROM funcionarios;

SELECT nome, salario
FROM funcionarios
WHERE salario > 4000;
