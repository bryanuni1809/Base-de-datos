--OVER: Queremos ver cuantos pedidos lleva cada cliente acumulados en el tiempo.
SELECT TOP 50
    CustomerID,OrderDate,COUNT(SalesOrderID)OVER(PARTITION BY CustomerID ORDER BY OrderDate)AS PedidosAcumulados
FROM Sales.SalesOrderHeader
ORDER BY CustomerID,OrderDate;
--PIVOT: Queremos ver cuantos pedidos hizo cada cliente por año, organizando los años como columnas.
SELECT TOP 100*FROM(
    SELECT soh.SalesOrderID,YEAR(soh.OrderDate)AS Anio,c.CustomerID
    FROM Sales.SalesOrderHeader soh
    JOIN Sales.Customer c ON soh.CustomerID=c.CustomerID
)AS src PIVOT(
    COUNT(SalesOrderID) FOR Anio IN ([2011],[2012],[2013],[2014])
)AS pvt
ORDER BY CustomerID;