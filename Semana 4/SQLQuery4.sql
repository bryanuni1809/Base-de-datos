--NOT
SELECT ProductID,Name,ListPrice
FROM Production.Product
WHERE NOT ListPrice =0;
--BETWEEN
SELECT ProductID,Name,ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 500 AND 1000;
--IN
SELECT BusinessEntityID,FirstName,LastName
FROM Person.Person
WHERE PersonType IN ('EM','IN','SP');
--LIKE
SELECT BusinessEntityID,FirstName,LastName
FROM Person.Person
WHERE LastName LIKE 'A%';
--NULL
SELECT BusinessEntityID, MiddleName, FirstName, LastName
FROM Person.Person
WHERE MiddleName IS NULL;