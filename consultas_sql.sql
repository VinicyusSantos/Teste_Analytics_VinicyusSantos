-- Consulta 1: Soma total das vendas por produto/categoria
SELECT 
    Produto,
    Categoria,
    SUM(Quantidade * Preço) AS total_vendas
FROM vendas
GROUP BY Produto, Categoria
ORDER BY total_vendas DESC;

-- ----------------------------------------------------------

-- Consulta 2: Produtos que venderam menos em junho
-- Observação: o enunciado pede junho/2024, mas o dataset vai até 2023.
-- Estou considerando junho/2023 e criando outra consulta para 2024/06.

SELECT 
    Produto,
    SUM(Quantidade * Preço) AS total_junho
FROM vendas
WHERE strftime('%Y-%m', Data) = '2023-06'
GROUP BY Produto
ORDER BY total_junho ASC
LIMIT 10;

--------------------------------------

-- Verifica existência de registros em 2024-06
SELECT COUNT(*) FROM vendas WHERE strftime('%Y-%m', Data) = '2024-06';

