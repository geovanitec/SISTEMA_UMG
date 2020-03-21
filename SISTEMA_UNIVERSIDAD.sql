create database SISTEMA_UMG;
use SISTEMA_UMG;

create table SEDE
(

CodigoSede int primary key,
NombreSede varchar (70) not null,
DireccionSede varchar (100) not null

)Engine = InnoDB Default charset = Latin1 ;

create table CURSOS
(
CodigoCurso int primary Key,
NombreCurso varchar(70) not null

)Engine = InnoDB Default charset = Latin1;

create table CATEDRATICOS
(
CodigoCatedratico int primary key,
NombreCatedratico varchar (70) not null,
CursoCatedratico varchar (70) not null,
CorreoCatedratico varchar (100) not null
 #foreign key (CodigoCurso) references CURSOS(CodigoCurso)
)Engine = InnoDB Default charset = Latin1 ;

create table FACULTADES
(
CodigoFacultad int primary key,
NombreFacultad varchar (70)not null,
CodigoSede int not null,
#CodigoCurso int not null,
foreign key (CodigoSede) references SEDE(CodigoSede)
#foreign key (CodigoCurso) references CURSO(CodigoCurso)
)Engine = InnoDB Default charset = Latin1 ;

create table HORARIOS
(
NumeroHorario int primary key,
IdCatedratico int not null,
IdFacultad int not null,
IdCurso int not null,
foreign key(IdCurso) references CURSOS(CodigoCurso),
foreign key(IdCatedratico) references CATEDRATICOS (CodigoCatedratico),
foreign key(IDFacultad)references FACULTADES(CodigoFacultad)

)Engine = InnoDB Default charset = Latin1 ;

create table ALUMNOS 
(
NumeroCarnet int primary Key,
NombreAlumno varchar(70) not null,
CorreoAlumno varchar (100) not null,
CarreraAlumno varchar (100) not null,
CicloAlumno int not null,
HorarioAlumno int not null,
IdAlumno int not null,
IdCurso int not null,
foreign key(IdCurso) references CURSOS(CodigoCurso),
foreign key (IdAlumno) references SEDE (CodigoSede),
foreign key (HorarioAlumno) references HORARIOS (NumeroHorario)
)Engine = InnoDB Default charset = Latin1 ;

create table ADMINISTRACION 
(
CodigoAdministracion int primary key,
PagosMesColegiatura Varchar(20) not null,
MontoPago float not null,
MultasPago float not null,
IdAlumno int not null,
IdSede int not null,
IdFacultad int not null,
IdHorario int not null,
IdCurso int not null,
foreign key(IdCurso) references CURSOS(CodigoCurso),
foreign key(IdAlumno) references ALUMNOS (NumeroCarnet),
foreign key(IdSede) references SEDE (CodigoSede),
foreign key(IdFacultad)references FACULTADES(CodigoFacultad),
foreign key(IdHorario) references HORARIOS (NumeroHorario)


)Engine = InnoDB Default charset = Latin1 ;
