GO
USE Tarea#3;
GO

-- Create a new table called 'DatosEstudiantes' in dbo 'SchemaName'
-- Drop the table if it already 
IF OBJECT_ID('dbo.DatosEstudiantes', 'U') IS NOT NULL
DROP TABLE dbo.DatosEstudiantes
GO 
-- Create the table in the specified schema
CREATE TABLE dbo.DatosEstudiantes
(
  Id INT IDENTITY(1,1) NOT NULL ,
  -- primary key column
  Nombre [NVARCHAR](50) NOT NULL,
  carrera [NVARCHAR](50) NOT NULL,
  CONSTRAINT pkID PRIMARY KEY (Id)
  -- specify more columns here
);
GO

-- Create a new table called 'materias' in dbo 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.materias', 'U') IS NOT NULL
DROP TABLE dbo.materias
GO
-- Create the table in the specified schema
CREATE TABLE dbo.materias
(
  Idmateria [INT] IDENTITY(1,1) NOT NULL,
  -- primary key column
  Nombre_materia [NVARCHAR](50) NOT NULL,
  CONSTRAINT pk_Idmateria PRIMARY KEY(Idmateria)
  -- specify more columns here
);
GO

-- Create a new table called 'notasEstudiante' in schema 'SchemaName'
-- Drop the table if it already exists

IF OBJECT_ID('dbo.notasEstudiante', 'U') IS NOT NULL
DROP TABLE dbo.notasEstudiante
GO
-- Create the table in the specified schema
CREATE TABLE dbo.notasEstudiante
(
  notasEstudianteId [int] IDENTITY(1,1) NOT NULL,
  -- primary key column
  id_estudiante [int] NOT NULL,
  materias_id [int] NOT NULL,
  Nota [int] NOT NULL,
  CONSTRAINT pk_notasEstudianteId PRIMARY KEY (notasEstudianteId)
  -- specify more columns here
);
GO
-- Insert rows into table 'Datosestudiantes'
INSERT INTO DatosEstudiantes
  ( -- columnNombresert data into
  [Nombre], [carrera]
  )
VALUES
  (
    'Heidy', 'Informatica'
),
  (
    'Moises', 'Gestion logistica'
),
  (
    'Osmin', 'Administracion'


)
GO

-- Insert rows into table 'materias'
INSERT INTO materias
  ( -- columns to insert data into
  [Nombre_materia]
  )
VALUES
  ( -- first row: values for the columns in the list above
    'Español'
),
  ( -- second row: values for the columns in the list above
    'Calculo 2'
),
  (
    ' Analisis contable'
)
-- add more rows here
GO

-- Insert rows into table 'Datosestudiantes'
INSERT INTO notasEstudiante
  ( -- columnNombresert data into
  [id_estudiante],[materias_id],[Nota]
  )
VALUES
  (
    '0', '1 ', 100
),
  (
    '1', '10', 100
),
  (
    '1', '1', 100


)

-- Select rows from a Table or View 'Datosestudiantes' in dbo 'SchemaName'
SELECT *
FROM dbo.DatosEstudiantes
--WHERE 	/* add search conditions here */
GO

-- Select rows from a Tabldbo'materias' in dbo 'SchemaName'
SELECT *
FROM dbo.materias
--WHERE 	/* add search conditions here */
GO

-- Select rows from a Table or View 'notasEstudiante' in schema 'SchemaName'
SELECT *
FROM dbo.notasEstudiante
--WHERE 	/* add search conditions here */
GO
