--empleados que han realizado ordenes
SELECT p.FirstName,p.LastName
FROM Person.Person p
WHERE p.BusinessEntityID IN(
    SELECT SalesPersonID FROM Sales.SalesOrderHeader 
    WHERE SalesPersonID IS NOT NULL
);
--empleados que tienen ordenes registradas
SELECT p.FirstName,p.LastName
FROM Person.Person p
WHERE EXISTS(
    SELECT 1 FROM Sales.SalesOrderHeader s
    WHERE s.SalesPersonID=p.BusinessEntityID
);