-- Funcion basica que retorna un valor
CREATE FUNCTION fn_TotalVentasCliente(@ClienteID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);
    SELECT @Total=SUM(TotalDue)FROM Sales.SalesOrderHeader
    WHERE CustomerID=@ClienteID;
    RETURN ISNULL(@Total, 0);
END;