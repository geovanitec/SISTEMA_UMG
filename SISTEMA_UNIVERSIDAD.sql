create database SISTEMA_UMG;
use SISTEMA_UMG;

create table ALUMNOS 
(
NumeroCarnet int primary Key,
NombreAlumno varchar(70) not null,
CorreoAlumno varchar (100) not null,
CarreraAlumno varchar (100) not null,
CicloAlumno int not null

)Engine = InnoDB Default charset = Latin1 ;

create table CATEDRATICOS
(
CodigoCatedratico int primary key,
NombreCatedratico varchar (70) not null,
CursoCatedratico varchar (70) not null,
CorreoCatedratico varchar (100) not null
)Engine = InnoDB Default charset = Latin1 ;

create table FACULTADES
(
CodigoFacultad int primary key,
NombreFacultad varchar (70)not null
)Engine = InnoDB Default charset = Latin1 ;

create table CONTROL_CATEDRATICO
(
foreign key(NumeroCarnet)references ALUMNOS (NumeroCarnet)

)
