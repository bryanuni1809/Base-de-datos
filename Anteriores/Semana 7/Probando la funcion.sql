-- Probar con cliente especifico
SELECT dbo.fn_TotalVentasCliente(11000) as TotalVentas;
-- Probar con varios clientes
SELECT 
    CustomerID as ClienteID,
    dbo.fn_TotalVentasCliente(CustomerID) as TotalVentas FROM Sales.Customer 
WHERE CustomerID BETWEEN 11000 AND 11005;