--NOT
SELECT ProductID,Name,ListPrice
FROM Production.Product
WHERE NOT ListPrice =0;
--BETWEEN
SELECT ProductID,Name,ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 500 AND 1000;
