USE poc_git;

INSERT INTO usuarios (nome, email, idade)
VALUES
('Joao', 'joao@email.com', 22),
('Maria', 'maria@email.com', 25),
('Carlos', 'carlos@email.com', 30);

INSERT INTO pedidos (usuario_id, produto, valor)
VALUES
(1, 'Mouse', 120.00),
(2, 'Teclado', 250.00),
(1, 'Monitor', 900.00);