--AND
SELECT ProductID,OrderQty,UnitPrice
FROM Sales.SalesOrderDetail
WHERE OrderQty> 10 AND UnitPrice> 100;
--OR
SELECT ProductID,OrderQty,UnitPrice
FROM Sales.SalesOrderDetail
WHERE OrderQty> 50 OR UnitPrice>1000;