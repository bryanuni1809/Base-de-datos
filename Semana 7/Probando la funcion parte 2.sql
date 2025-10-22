-- Total de ventas de un cliente 
SELECT dbo.fn_TotalVentasClientePeriodo(11000,NULL,NULL)asTotalHistorico;
-- Total de ventas en un año especifico
SELECT dbo.fn_TotalVentasClientePeriodo(11000, '2013-01-01', '2013-12-31') asVentas2013;
-- Comparar diferentes periodos
SELECT 
    CustomerID as ClienteID,
    dbo.fn_TotalVentasClientePeriodo(CustomerID,'2011-01-01','2011-12-31')as Ventas2011,
    dbo.fn_TotalVentasClientePeriodo(CustomerID,'2012-01-01','2012-12-31')as Ventas2012,
    dbo.fn_TotalVentasClientePeriodo(CustomerID,'2013-01-01','2013-12-31')as Ventas2013,
    dbo.fn_TotalVentasClientePeriodo(CustomerID,NULL,NULL)as TotalGeneral
FROM Sales.Customer 
WHERE CustomerID BETWEEN 11000 AND 11003;