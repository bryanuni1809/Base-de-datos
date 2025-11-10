CREATE PROCEDURE dbo.ActualizarSalarioEmpleado @EmployeeID INT,@NuevoSalario MONEY
AS
BEGIN
    UPDATE HumanResources.EmployeePayHistory
    SET Rate=@NuevoSalario,ModifiedDate=GETDATE()
    WHERE BusinessEntityID=@EmployeeID;
END;
