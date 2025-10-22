--CASE
SELECT ProductID,Name,ListPrice,
       CASE 
           WHEN ListPrice =0 THEN 'Gratis'
           WHEN ListPrice <100 THEN'Económico'
           WHEN ListPrice BETWEEN 100 AND 1000 THEN'Estándar'
           ELSE 'Premium'
       END AS CategoriaPrecio
FROM Production.Product;