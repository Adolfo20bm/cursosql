-- POner default a una base de datos
-- En la base de datos ir a security -> Logins -> sa o el usuario actual
-- poner defaul ña base que trabajas 


SELECT * from paciente

INSERT INTO paciente (nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
values('Diego','Perez','2013-01-04','Av Pablo Marmol 2','BRA','','','')

UPDATE paciente SET observacion='pacientes creados desde UI'

-- CLAUSULAS SQL

-- WHERE

SELECT * FROM Paciente WHERE nombre = 'claudio' and apellido='bravo'

DELETE FROM Paciente where nombre = 'claudio' and apellido='bravo'

UPDATE paciente SET observacion='Observacion modificada' where idPaciente=7

-- TOP

SELECT TOP 2 * FROM Paciente where apellido='perez'

--para traer el ultimo registro
select top 1 * from Turno order by fechaTurno desc

-- ORDER BY con ASC y DESC

SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento ASC

-- DISTINCT

SELECT DISTINCT (apellido) from Paciente

SELECT DISTINCT idpaciente, apellido from Paciente

-- GROUP BY
SELECT * FROM Paciente GROUP BY apellido
SELECT apellido FROM Paciente GROUP BY apellido

-- FUNCION MAX Y MIN

SELECT MAX(idpaciente) from Paciente
SELECT MIN(idpaciente) from Paciente
SELECT apellido, MAX(idpaciente) from Paciente group by apellido

-- FUNCION SUM

SELECT SUM(idpaciente) , apellido from Paciente group by apellido

-- FUNCION AVG
--permite calcular un promedio

SELECT AVG(idpaciente) FROM Paciente

-- FUNCION COUNT

SELECT COUNT(*) FROM Paciente
SELECT COUNT(idPaciente) FROM Paciente
SELECT COUNT(idPaciente) FROM Paciente where apellido='Perez'

-- FUNCION HAVING
-- Filtra los registros en la condicion que l das en un conjunto de registros

SELECT estado FROM turno group by estado HAVING COUNT(estado) = 2


-- OPERADORES

-- AND
SELECT * FROM Paciente where apellido='Perez' and nombre='roberto' and idPaciente= 7

-- OR
SELECT * FROM Paciente where apellido='Perez' or nombre='roberto' or idPaciente= 7

-- IN
-- PERMITE FILTAR POR NUMERO DE VALORES
SELECT * FROM turno WHERE estado in (0,1,2)
SELECT * FROM Paciente WHERE apellido IN('perez','ramirez','gonzales')

-- LIKE
SELECT * FROM Paciente where nombre like '%ober%'

-- NOT permite negar un operador
SELECT * FROM Paciente where nombre not like '%ober%'
SELECT * FROM Paciente WHERE apellido NOT IN('perez','ramirez','gonzales')

-- BETWEEN en un rango, fechas, numeros textos
SELECT * FROM turno WHERE fechaTurno between '20200301' and '20200330 13:00:00'
SELECT * FROM turno WHERE estado between 0 and 3

-- COMBINANDO OPERADORES
SELECT * FROM Paciente 
where apellido='Perez' 
and nombre='roberto' 
or idPaciente= 7 or idPais='PER'

SELECT * FROM Paciente 
where apellido='Perez' 
and (nombre='roberto' or idPaciente= 7 or idPais='PER') and idPaciente not in (6,3)

