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
--AND
SELECT nombre,edad,correo
FROM Estudiantes
WHERE edad>20 AND correo IS NOT NULL;
--LIKE
SELECT nombre
FROM Estudiantes
WHERE nombre LIKE 'C%';

SELECT nombre
FROM Estudiantes
WHERE nombre LIKE '%an%';
--IN
SELECT nombre, edad
FROM Estudiantes
WHERE nombre IN ('Luis Santos','Ana Torres','Valeria Gomez');

--IS NULL
SELECT nombre
FROM Estudiantes
WHERE correo IS NULL;

SELECT nombre, correo
FROM Estudiantes
WHERE correo IS NOT NULL;
--COUNT
SELECT c.nombre AS Curso, 
       COUNT(m.idestudiante) AS TotalAlumnos
FROM Cursos c
INNER JOIN Matriculas m ON c.idcurso=m.idcurso
GROUP BY c.nombre
ORDER BY TotalAlumnos DESC;

SELECT COUNT(*) AS TotalEstudiantes
FROM Estudiantes;
--AVG
SELECT c.nombre AS Curso, 
       AVG(cal.nota)AS PromedioNotas
FROM Cursos c
INNER JOIN Matriculas m ON c.idcurso=m.idcurso
INNER JOIN Calificaciones cal ON m.idmatricula=cal.idmatricula
GROUP BY c.nombre
ORDER BY PromedioNotas DESC;

--MIN y MAX
SELECT c.nombre AS Curso,
       MAX(cal.nota)AS NotaMaxima,
       MIN(cal.nota) AS NotaMinima
FROM Cursos c
INNER JOIN Matriculas m ON c.idcurso=m.idcurso
INNER JOIN Calificaciones cal ON m.idmatricula=cal.idmatricula
GROUP BY c.nombre;
