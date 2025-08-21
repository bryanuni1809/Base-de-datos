USE Proyecto;
GO
DROP TABLE IF EXISTS Calificaciones;
DROP TABLE IF EXISTS Matriculas;
DROP TABLE IF EXISTS Estudiantes;
DROP TABLE IF EXISTS Cursos;
DROP TABLE IF EXISTS Profesores;
DROP TABLE IF EXISTS NivelesIdioma;
DROP TABLE IF EXISTS Usuarios;

CREATE TABLE Usuarios (
    id INT PRIMARY KEY IDENTITY(1,1),
    usuario NVARCHAR(50) UNIQUE NOT NULL,
    contrasena NVARCHAR(100) NOT NULL
);

INSERT INTO Usuarios (usuario, contrasena) VALUES
    ('admin','1234'),
    ('bryan','5678'),
    ('invitado','abc123'),
    ('juanito','mypass'),
    ('jose','qwerty'),
    ('carlos','carla2025'),
    ('soporte','helpme');

CREATE TABLE Profesores (
    idprofesor INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    especialidad NVARCHAR(50) NOT NULL,
    telefono NVARCHAR(20), 
    correo NVARCHAR(100)
);
INSERT INTO Profesores (nombre,especialidad,telefono,correo) VALUES
    ('Juan Perez','Ingles Avanzado','999111222','juan.perez@multilingua.com'),
    ('Maria Lopez','Ingles Basico','988333444','maria.lopez@multilingua.com'),
    ('Carlos Fernandez','Ingles Intermedio','977555666','carlos.fernandez@multilingua.com'),
    ('Lucia Ramirez','Ingles para Negocios','966777888','lucia.ramirez@multilingua.com'),
    ('Pedro Sanchez','Conversacion en Ingles','955999000','pedro.sanchez@multilingua.com');


CREATE TABLE NivelesIdioma (
    idnivel INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(50) NOT NULL,
    descripcion NVARCHAR(100)
);
INSERT INTO NivelesIdioma (nombre, descripcion)
VALUES
    ('Basico', 'Nivel introductorio de ingles'),
    ('Pre-Intermedio', 'Comprension inicial de frases simples'),
    ('Intermedio', 'Nivel medio de ingles con gramatica y vocabulario solido'),
    ('Intermedio-Alto', 'Nivel fluido en situaciones cotidianas y profesionales'),
    ('Avanzado', 'Nivel avanzado de inglés con dominio oral y escrito');

CREATE TABLE Cursos (
    idcurso INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    descripcion NVARCHAR(200),
    idprofesor INT NOT NULL,
    idnivel INT NOT NULL,
    FOREIGN KEY (idprofesor) REFERENCES Profesores(idprofesor),
    FOREIGN KEY (idnivel) REFERENCES NivelesIdioma(idnivel)
);
INSERT INTO Cursos (nombre,descripcion,idprofesor,idnivel) VALUES
    ('Ingles Basico 1','Curso introductorio para aprender vocabulario y frases simples.',2,1),
    ('Ingles Basico 2','Refuerzo del nivel basico con mas gramatica y comprension.',2,2),
    ('Ingles Intermedio 1','Consolidacion de estructuras gramaticales y lectura.',3,3),
    ('Ingles Intermedio 2','Práctica intensiva en escritura y conversacion.',3,4),
    ('Ingles Avanzado 1','Perfeccionamiento del ingles oral y escrito.',1,5),
    ('Ingles para Negocios', 'Enfocado en situaciones empresariales y terminologia.',4,4),
    ('Conversacion Avanzada', 'Practica oral fluida en temas de actualidad y cultura.',5,5);


CREATE TABLE Estudiantes (
    idestudiante INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    correo NVARCHAR(100) UNIQUE,
    idusuario INT NOT NULL,
    FOREIGN KEY (idusuario) REFERENCES Usuarios(id)
);
INSERT INTO Estudiantes (nombre,edad,correo,idusuario) VALUES
    ('Luis Santos',20,'luis.santos@email.com',2),
    ('Ana Torres',22,'ana.torres@email.com',3),
    ('Jorge Ramirez',19,'jorge.ramirez@email.com',4),
    ('Valeria Gomez',25,'valeria.gomez@email.com',5),
    ('Carlos Silva',30,'carlos.silva@email.com',6),
    ('Lucia Torres',18,'lucia.torres@email.com',7),
    ('Martin Flores',21,'martin.flores@email.com',1);
CREATE TABLE Matriculas (
    idmatricula INT PRIMARY KEY IDENTITY(1,1),
    idestudiante INT NOT NULL,
    idcurso INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (idestudiante) REFERENCES Estudiantes(idestudiante),
    FOREIGN KEY (idcurso) REFERENCES Cursos(idcurso)
);
INSERT INTO Matriculas (idestudiante,idcurso,fecha) VALUES
    (1,1,'2025-01-10'),
    (2,2,'2025-01-12'),
    (3,3,'2025-01-15'),
    (4,4,'2025-01-18'),
    (5,5,'2025-01-20');	

SELECT * FROM Usuarios;
SELECT * FROM Profesores;
SELECT * FROM Cursos;
SELECT * FROM NivelesIdioma;
SELECT * FROM Estudiantes;
SELECT * FROM Matriculas;

