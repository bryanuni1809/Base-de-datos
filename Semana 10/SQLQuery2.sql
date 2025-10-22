SELECT sp.FullName AS nombrevendedor,c.CustomerCategoryName AS categoriacliente,
    COUNT(DISTINCT so.OrderID)AS cantidadpedidos,
    SUM(sol.UnitPrice*sol.Quantity)AS totalventas,
    AVG(sol.UnitPrice*sol.Quantity)AS promedioventa,
    MAX(sol.UnitPrice*sol.Quantity)AS ventamasalta,
    MIN(sol.UnitPrice*sol.Quantity)AS ventamasbaja
FROM Sales.Orders AS so
INNER JOIN Sales.OrderLines AS sol ON so.OrderID=sol.OrderID
INNER JOIN Sales.Customers AS cu ON so.CustomerID=cu.CustomerID
INNER JOIN Sales.CustomerCategories AS c ON cu.CustomerCategoryID=c.CustomerCategoryID
INNER JOIN Application.People AS sp ON so.SalespersonPersonID=sp.PersonID
WHERE YEAR(so.OrderDate)=2015
GROUP BY sp.FullName,c.CustomerCategoryName
HAVING SUM(sol.UnitPrice*sol.Quantity)>200000
ORDER BY totalventas DESC;