--Devuelve los productos que tienen subcategoría asignada
SELECT p.ProductID,p.Name AS Producto,ps.Name AS Subcategoria
FROM Production.Product p
INNER JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID=ps.ProductSubcategoryID;
--Devuelve todos los productos y incluso los que no tienen subcategoria.
SELECT p.ProductID,p.Name AS Producto,ps.Name AS Subcategoria
FROM Production.Product p
LEFT JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID=ps.ProductSubcategoryID;
--Devuelve todas las subcategorias, incluso si no tienen productos asociados.
SELECT ps.ProductSubcategoryID,ps.Name AS Subcategoria,p.Name AS Producto
FROM Production.Product p
RIGHT JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID=ps.ProductSubcategoryID;