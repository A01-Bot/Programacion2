create database
Solicitud_Permisos
GO
use Solicitud_Permisos
GO

create table Usuarios(
Id_Usuario int primary key not null,
Id_Roles int,
Id_Departamento varchar(50),
Nombre varchar (50),
Nombre_Usuario varchar(50),
Email varchar(50),
Contraseña varbinary(200),
Puesto varchar(50)
)
GO

create table Solicitudes(
Id_Solicitudes int primary key  not null,
Id_ControlAsistencia int,
Id_Usuario int,
Estado varchar(1),
Comentario varchar(100),
Motivo_Falta varchar(100),
Tiempo_Estimado varchar(100),
Fecha_Solicitud date
)
GO

create table ControlAsistencia(
Id_ControlAsistencia int primary key not null,
Fecha_Marca date,
Hora_Entrada time,
Hora_Salida time
)
GO

create table Roles(
Id_Roles int primary key not null,
Nombre varchar(50)
)
GO

create table Departamentos(
Id_Departamentos int primary key not null,
Nombre varchar(50)
)
GO

-- Crear relaciones
alter table Usuarios
add foreign key (Id_Roles) references Roles(Id_Roles);

alter table Usuarios
add foreign key (Id_Departamento) references Departamentos(Id_Departamentos);

alter table Solicitudes
add foreign key (Id_ControlAsistencia) references ControlAsistencia(Id_ControlAsistencia);

alter table Solicitudes
add foreign key (Id_Usuario) references Usuarios(Id_Usuario);