SELECT 
    c.id AS codigo_cliente,
    c.razao_social,
    t.numero AS telefone
FROM 
    Clientes c
JOIN 
    Estados e ON c.estado_id = e.id
JOIN 
    Telefones t ON c.id = t.cliente_id
WHERE 
    e.codigo = 'SP';