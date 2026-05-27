CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);

INSERT INTO usuarios (id, nome, idade)
VALUES
(1, 'Carlos', 25),
(2, 'Maria', 30),
(3, 'João', 22);

SELECT * FROM usuarios;

SELECT nome, idade
FROM usuarios
WHERE idade > 24;
