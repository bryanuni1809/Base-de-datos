-- AND
SELECT FullName, Balance, Email
FROM Student_Records
WHERE Balance > 1000 AND Email IS NOT NULL;

-- LIKE
SELECT FullName
FROM Student_Records
WHERE FullName LIKE 'O%';

-- LIKE
SELECT FullName
FROM Student_Records
WHERE FullName LIKE '%an%';

-- IN
SELECT FullName, Balance
FROM Student_Records
WHERE FullName IN ('Ophelia Jenkins','Luis Santos','Ana Torres');

--IS NULL
SELECT FullName
FROM Student_Records
WHERE Email IS NULL;

--IS NOT NULL
SELECT FullName, Email
FROM Student_Records
WHERE Email IS NOT NULL;

--COUNT 
SELECT Program, COUNT(*) AS TotalEstudiantes
FROM Student_Records
GROUP BY Program
ORDER BY TotalEstudiantes DESC;

-- COUNT
SELECT COUNT(*) AS TotalEstudiantes
FROM Student_Records;

-- AVG
SELECT Program, AVG(Balance) AS PromedioBalance
FROM Student_Records
GROUP BY Program
ORDER BY PromedioBalance DESC;

-- MIN y MAX
SELECT Program,
       MAX(Balance) AS BalanceMaximo,
       MIN(Balance) AS BalanceMinimo
FROM Student_Records
GROUP BY Program;