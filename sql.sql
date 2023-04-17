--para crear una tabla
create table usuarios(
    nombre varchasr(30),
    clave varchar(10)
)

-- para eliminar una tabla
drop table usuarios;

-- sp_columns  procedimiento almacenado para ver la tabla
-- exec sp_columns usuarios
-- codigo para verificar si una tabla existe y si no eliminarla y crearla 

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios (
nombre varchasr(30),
    clave varchar(10)
);

exec sp_tables @table_owner='dbo';

exec sp_columns usuarios;

drop table usuarios;

exec sp_tables @table_owner='dbo';


