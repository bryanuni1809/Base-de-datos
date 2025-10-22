--HAVING
SELECT ProductID,SUM(OrderQty) AS TotalVendido
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty)>1000;