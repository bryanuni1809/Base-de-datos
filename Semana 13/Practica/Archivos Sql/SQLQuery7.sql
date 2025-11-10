DECLARE @EmployeeID INT;
DECLARE CurAumento CURSOR FOR
SELECT BusinessEntityID FROM HumanResources.Employee;
OPEN CurAumento;
FETCH NEXT FROM CurAumento INTO @EmployeeID;
WHILE @@FETCH_STATUS=0
BEGIN
    UPDATE HumanResources.EmployeePayHistory
    SET Rate=Rate*1.05
    WHERE BusinessEntityID=@EmployeeID;
    FETCH NEXT FROM CurAumento INTO @EmployeeID;
END
CLOSE CurAumento;
DEALLOCATE CurAumento;