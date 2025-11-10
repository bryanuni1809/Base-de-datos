DECLARE @PromedioSalario MONEY;
SELECT @PromedioSalario=AVG(Rate)
FROM HumanResources.EmployeePayHistory;
PRINT 'El salario promedio es: '+CAST(@PromedioSalario AS VARCHAR(20));