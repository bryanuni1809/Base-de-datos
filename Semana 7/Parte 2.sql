DROP PROCEDURE IF EXISTS Eliminar;
GO
--Creamos un procedimiento almacenado que recibe el ID de un cliente, usando una transacción con TRY CATCH, 
--confirma el borrado si todo va bien o revierte los cambios si ocurre un error
CREATE PROCEDURE Eliminar
    @CustomerID INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;
        DELETE FROM Sales.Customer
        WHERE CustomerID=@CustomerID;
        COMMIT TRANSACTION;
        PRINT 'Cliente eliminado correctamente';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al eliminar: '+ERROR_MESSAGE();
    END CATCH
END;
GO