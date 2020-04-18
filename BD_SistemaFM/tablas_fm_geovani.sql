
#drop database sistema_fm;

create database sistema_fm;
use sistema_fm;

create table clientes
(
No_Tarjeta int auto_increment primary key,
Nombre varchar (60) not null,
Apellido varchar (60) not null,
Correo varchar (60) not null,
Direccion varchar (60) not null,
Estatus varchar (1) not null

)engine=InnoDB auto_increment=1110 Default charset = Latin1 ;


create table articulos
(
Id_Articulo int primary key,
Tipo varchar (60) not null,
Nombre varchar (60) not null,
Genero varchar (60) not null,
Descripcion varchar (400) not null,
Precio_Renta float not null
) engine=InnoDB Default charset = Latin1 ;


create table administrador 
(
Id_Administrador int primary key,
Nombre varchar (60) not null,
clave  varchar (60) not null

)engine=InnoDB Default charset = Latin1 ;

create table rentas
(
Id_Renta int primary key auto_increment,
No_Tarjeta int Not null,
Nombre varchar (60) not null,
Fecha_PrimerRenta  varchar(12)  not null

#foreign key (No_Tarjeta) references clientes (No_Tarjeta)

)engine=InnoDB Default charset = Latin1 ;




create table reporte
(
Id_Reporte int primary key auto_increment,
No_Tarjeta int not null,
Nombre_Cliente varchar (60) not null,
Fecha_Adquisicion varchar(12) not null,
Fecha_Devolucion varchar(12) not null, 
Id_Articulo int not null,
Total_Renta float not null

#foreign key (No_Tarjeta) references clientes (No_Tarjeta),
#foreign key(Id_Articulo) references articulos (Id_Articulo)

)engine=InnoDB Default charset = Latin1 ;

create table devolucion
(
Id_Devolucion int primary key,
No_Tarjeta int not null,
Monto float not null,
Mora  float not null,
Fecha_Renta  varchar(12)  not null,
Fecha_Devolucion varchar(12)   not null,

foreign key (No_Tarjeta) references clientes (No_Tarjeta)

)engine=InnoDB Default charset = Latin1 ;

#select * from articulos;
#select * from clientes;
select * from rentas;
select * from reporte;
select * from devolucion;