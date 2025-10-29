--Convertir salario a decimal con 2 decimales
SELECT p.BusinessEntityID,CAST(e.SickLeaveHours AS DECIMAL(10,2))AS HorasConvertidas FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID=p.BusinessEntityID;
--Mostrar fecha formateada (DD/MM/YYYY)
SELECT SalesOrderID,CONVERT(VARCHAR(10),OrderDate,103)AS Fecha FROM Sales.SalesOrderHeader;