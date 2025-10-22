--Subconsulta Escalar
SELECT Name,ListPrice
FROM Production.Product
WHERE ListPrice=(SELECT MAX(ListPrice) 
FROM Production.Product);
--Subconsulta con IN
SELECT Name,ProductSubcategoryID,ListPrice
FROM Production.Product
WHERE ProductSubcategoryID IN(
    SELECT ProductSubcategoryID
    FROM Production.Product
    WHERE ListPrice>2000
    );