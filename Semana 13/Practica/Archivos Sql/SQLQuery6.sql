DECLARE @NombreDepartamento NVARCHAR(50)='Finance';
DECLARE @Existe INT;
SELECT @Existe=COUNT(*) 
FROM HumanResources.Department
WHERE Name=@NombreDepartamento;
IF @Existe=1
    PRINT'El departamento existe.';
ELSE
    PRINT'El departamento NO existe.';