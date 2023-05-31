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



