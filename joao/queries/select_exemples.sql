USE poc_git;

-- todos usuarios
SELECT * FROM usuarios;

-- usuarios maiores de 23 anos
SELECT * 
FROM usuarios
WHERE idade > 23;

-- join entre usuarios e pedidos
SELECT 
    usuarios.nome,
    pedidos.produto,
    pedidos.valor
FROM pedidos
JOIN usuarios ON pedidos.usuario_id = usuarios.id;