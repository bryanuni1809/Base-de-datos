USE Proyecto;
GO
DROP PROCEDURE IF EXISTS BuscarEstudiante;
GO

CREATE PROCEDURE BuscarEstudiante
    @Nombre NVARCHAR(100)
AS
BEGIN
    SELECT e.idestudiante,e.nombre,e.edad,e.correo
    FROM Estudiantes e
    WHERE e.nombre LIKE'%'+ @Nombre+'%';
END;
GO  
EXEC BuscarEstudiante @Nombre='Luis';

DROP PROCEDURE IF EXISTS PromedioPorCurso;
GO

CREATE PROCEDURE PromedioPorCurso
AS
BEGIN
    SELECT c.nombre AS Curso, 
           AVG(cal.nota) AS PromedioNotas
    FROM Cursos c
    INNER JOIN Matriculas m ON c.idcurso=m.idcurso
    INNER JOIN Calificaciones cal ON m.idmatricula=cal.idmatricula
    GROUP BY c.nombre
    ORDER BY PromedioNotas DESC;
END;
GO

EXEC PromedioPorCurso;
SELECT nombre,edad,correo
FROM Estudiantes
WHERE edad>20 AND correo IS NOT NULL;

SELECT nombre
FROM Estudiantes
WHERE nombre LIKE 'C%';
