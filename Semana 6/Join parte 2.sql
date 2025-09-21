--Devuelve todos los clientes y todas las ordenes, aunque no coincidan.
SELECT c.CustomerID,soh.SalesOrderID
FROM Sales.Customer c
FULL JOIN Sales.SalesOrderHeader soh
    ON c.CustomerID=soh.CustomerID;
--Devuelve  todas las combinaciones posibles de monedas y metodos de envio.
SELECT cr.CurrencyCode,sm.Name AS MetodoEnvio
FROM Sales.Currency cr
CROSS JOIN Purchasing.ShipMethod sm;
-- Une dos listas en una sola, de clientes que hicieron pedidos y clientes que nunca hicieron pedidos.
SELECT c.CustomerID,'ConPedidos'AS Estado
FROM Sales.Customer c
WHERE c.CustomerID IN(SELECT CustomerID FROM Sales.SalesOrderHeader)
UNION
SELECT c.CustomerID,'SinPedidos'AS Estado
FROM Sales.Customer c
WHERE c.CustomerID NOT IN(SELECT CustomerID FROM Sales.SalesOrderHeader);