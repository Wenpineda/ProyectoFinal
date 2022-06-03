create database CoffeeGourmet

use CoffeeGourmet

create table Cliente(
idCliente int primary key identity (1,1)not null,
Usuario varchar(50) not null,
Email varchar(50) not null,
Contraseña varchar (100) not null,
);

create table Producto (
idProducto int identity(1,1) NOT NULL PRIMARY KEY,
Nombre varchar(50) not null,
Descripcion varchar(100) not null,
Precio decimal(5,2) not null,
Cantidad int,
Estado int,
);

select * from Producto

create table Venta(
idVenta int primary key identity(1,1) not null,
idCliente int not null,
num_comprobante varchar (10) not null,
fecha_hora datetime default getdate(),
total decimal (11,2) not null,
FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente)
);

create table detalle_factura(
idDetalle_venta integer primary key identity (1,1),
idVenta int not null,
idProducto int not null,
idCliente int not null,
precio decimal(11,2) not null,
FOREIGN KEY (idVenta) REFERENCES Venta (idVenta),
FOREIGN KEY (idProducto) REFERENCES Producto (idProducto),
FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente)
);