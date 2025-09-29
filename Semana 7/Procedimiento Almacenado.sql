-- Crear procedimiento almacenado que recibe un parametro de entrada que indica el cliente y devuelve una lista de pedidos
CREATE PROCEDURE Obtener
    @CustomerID INT
AS
BEGIN
SET NOCOUNT ON;
SELECT soh.SalesOrderID,soh.OrderDate,soh.TotalDue
FROM Sales.SalesOrderHeader soh
WHERE soh.CustomerID=@CustomerID
ORDER BY soh.OrderDate DESC;
END;
GO
EXEC Obtener @CustomerID=29825;