--Subconsulta Correlacionada
SELECT p.Name,p.ListPrice,p.ProductSubcategoryID
FROM Production.Product p
WHERE p.ListPrice>(
    SELECT AVG(ListPrice)
    FROM Production.Product
    WHERE ProductSubcategoryID=p.ProductSubcategoryID
);