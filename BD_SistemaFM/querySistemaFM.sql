#drop database SISTEMA_FM;

create database SISTEMA_FM;
use SISTEMA_FM;

create table clientes
(
No_Tarjeta int auto_increment primary key,
Nombre varchar (60) not null,
Apellido varchar (60) not null,
Correo varchar (60) not null,
Direccion varchar (60) not null,
Estatus varchar (1) not null

)engine=InnoDB Default charset = Latin1 ;


create table articulos
(
Id_Articulo int primary key,
Tipo varchar (60) not null,
Nombre varchar (60) not null,
Genero varchar (60) not null,
Descripcion varchar (60) not null,
Precio_Renta float not null,
Existencia int  not null

) engine=InnoDB Default charset = Latin1 ;


create table administrador 
(
Id_Administrador int primary key,
Nombre varchar (60) not null,
clave  varchar (60) not null


)engine=InnoDB Default charset = Latin1 ;

create table rentas
(
Id_Renta int primary key,
No_Tarjeta int Not null,
Nombre varchar (60) not null,
Fecha_PrimerRenta  date  not null,

foreign key (No_Tarjeta) references clientes (No_Tarjeta)

)engine=InnoDB Default charset = Latin1 ;


create table reporte
(
Id_Reporte int primary key,
Id_Administrador int not null,
No_Tarjeta int not null,
Nombre_Cliente varchar (60) not null,
Fecha_Adquisicion date not null,
Fecha_Devolucion date not null, 
Id_Producto int not null,
Precio_Renta float not null,

foreign key (No_Tarjeta) references clientes (No_Tarjeta),
foreign key(Id_Producto) references articulos (Id_Articulo),
foreign key(Id_Administrador ) references  administrador (Id_Administrador ) 


)engine=InnoDB Default charset = Latin1 ;


