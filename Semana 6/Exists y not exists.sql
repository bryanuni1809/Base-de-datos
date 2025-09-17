--Subconsulta con EXISTS
SELECT c.CustomerID,c.PersonID
FROM Sales.Customer c
WHERE EXISTS(
    SELECT 1
    FROM Sales.SalesOrderHeader s
    WHERE s.CustomerID=c.CustomerID
);
--Subconsulta con NOT EXISTS
SELECT c.CustomerID,c.PersonID
FROM Sales.Customer c
WHERE NOT EXISTS(
    SELECT 1
    FROM Sales.SalesOrderHeader s
    WHERE s.CustomerID=c.CustomerID
);