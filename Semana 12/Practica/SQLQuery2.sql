--Edad aproximada de empleados
SELECT FirstName,LastName,DATEDIFF(YEAR,BirthDate,GETDATE())AS Edad FROM HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID=p.BusinessEntityID;
--Ordenes realizadas en el ultimo mes
SELECT SalesOrderID,OrderDate FROM Sales.SalesOrderHeader
WHERE OrderDate>=DATEADD(MONTH,-1,GETDATE());
--Nombre completo de empleados
SELECT CONCAT(p.FirstName,' ',p.LastName)AS NombreCompleto FROM Person.Person p;
--Primeras 3 letras del apellido
SELECT p.LastName,SUBSTRING(p.LastName,1,3)AS Iniciales FROM Person.Person p;
--Convertir nombre a mayusculas
SELECT UPPER(FirstName)AS NombreMayus FROM Person.Person;
