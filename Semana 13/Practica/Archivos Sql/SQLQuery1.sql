CREATE FUNCTION dbo.ObtenerNombreCompleto(@BusinessEntityID INT)
RETURNS NVARCHAR(200)
AS
BEGIN
    DECLARE @Nombre NVARCHAR(200);
    SELECT @Nombre=p.FirstName+' '+p.LastName FROM Person.Person p
    WHERE p.BusinessEntityID=@BusinessEntityID;
    RETURN @Nombre;
END;