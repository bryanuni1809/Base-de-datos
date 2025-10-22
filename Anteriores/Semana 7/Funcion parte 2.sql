-- Funcion con filtro de fecha
CREATE FUNCTION fn_TotalVentasClientePeriodo(
    @ClienteID INT,
    @FechaInicio DATE=NULL,
    @FechaFin DATE=NULL
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);
    SELECT @Total=SUM(TotalDue)
    FROM Sales.SalesOrderHeader
    WHERE CustomerID=@ClienteID
    AND (@FechaInicio IS NULL OR OrderDate>= @FechaInicio)
    AND (@FechaFin IS NULL OR OrderDate<= @FechaFin);
    RETURN ISNULL(@Total, 0);
END;