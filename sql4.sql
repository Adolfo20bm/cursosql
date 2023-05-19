alter table Paciente
add foreign key (idPais) references Pais(idPais)

alter table HistoriaPaciente
add foreign key (idPaciente) references Paciente(idPaciente)

-- Reiniciar el identity
-- En una base de datos cualquiera en una tabla
-- insert into tabla1 values(1)
-- select * from tabla1
-- delete from tabla1
-- dbcc checkident ('tabla1', ressed, 0)
