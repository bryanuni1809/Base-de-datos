--Empleados con mas de 30 años que hicieron ventas
SELECT CONCAT(p.FirstName,' ',p.LastName)AS NombreCompleto,DATEDIFF(YEAR,e.BirthDate,GETDATE())AS Edad,
CONVERT(VARCHAR(10),s.OrderDate,103)AS FechaVenta
FROM Person.Person p
JOIN HumanResources.Employee e ON p.BusinessEntityID=e.BusinessEntityID
JOIN Sales.SalesOrderHeader s ON e.BusinessEntityID=s.SalesPersonID
WHERE DATEDIFF(YEAR,e.BirthDate,GETDATE())>30;