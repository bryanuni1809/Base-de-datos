--CASE y HAVING
SELECT ProductID,
       SUM(OrderQty)AS TotalVendido,
       CASE 
           WHEN SUM(OrderQty)>5000 THEN'Top Ventas'
           ELSE 'Ventas Normales'
       END AS CategoriaVenta
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) >1000;