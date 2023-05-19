alter table Paciente
add foreign key (idPais) references Pais(idPais)

alter table HistoriaPaciente
add foreign key (idPaciente) references Paciente(idPaciente)