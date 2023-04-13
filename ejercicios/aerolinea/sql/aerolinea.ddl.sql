-- show DATABASES; -- Mostrar base de datos

drop database if exists aerolinea; -- Borrar base de datos

create database if not exists aerolinea; -- Crear base de datos

use aerolinea; -- Uso base de datos

create TABLE pasajeros( pasaporte int PRIMARY KEY, nro_vuelo int); -- Creamos tabla pasajeros

CREATE TABLE vuelos( -- Creamos tabla vuelos
	nro int PRIMARY KEY AUTO_INCREMENT,
    horaSalida int,
    fecha date,
    horaLlegada int,
    ciudad varchar(50)
);

CREATE table personal( -- Creamos tabla personal
	nroLegajo int primary key,
    nombre varchar(25),
    nro_vuelo int,
    areaAsignada ENUM("azafata","soporte","limpieza","piloto")
);

create table pilotos( -- creamos tabla pilotos
	nroLegajo int primary key,
    nro_avion int
);

create table piloto_personal( -- creamos tabla intermediaria entre piloto y personal
	id int primary key auto_increment,
    nroLegajo_piloto int,
    nroLegajo_personal int
);

create table aviones( -- creamos tabla aviones
	nro int primary key auto_increment,
    modelo varchar(50),
    fabricante varchar(25),
    capacidad int,
    angar varchar(12),
    nro_vuelo int
);

/* 
	Cardinalidad
*/

/*
	1) Alterame la tabla piloto_personal
    2) Agregame foreign key/clave secundaria a la variable/atributo "nroLegajo_piloto"
    3) Referenciame (la fk "nroLegajo") a la entidad "pilotos" a la variable/atributo (PK) "nroLegajo"
*/

alter table pasajeros add foreign key (nro_vuelo) references vuelos(nro);

alter table aviones add foreign key (nro_vuelo) references vuelos(nro);

alter table personal add foreign key (nro_vuelo) references vuelos(nro);

alter table pilotos add foreign key (nro_avion) references aviones(nro);

alter table piloto_personal
add foreign key (nroLegajo_piloto)
references pilotos (nroLegajo);

alter table piloto_personal
add foreign key (nroLegajo_personal)
references personal (nroLegajo);