--CASE
SELECT ProductID,Name,ListPrice,
       CASE 
           WHEN ListPrice =0 THEN 'Gratis'
           WHEN ListPrice <100 THEN'Econ�mico'
           WHEN ListPrice BETWEEN 100 AND 1000 THEN'Est�ndar'
           ELSE 'Premium'
       END AS CategoriaPrecio
FROM Production.Product;