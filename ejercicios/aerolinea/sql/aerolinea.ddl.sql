-- Comentario de una linea

/* 
	Comentario de bloque
*/

-- SHOW DATABASES; -- Muestra las bases de datos

drop database if exists aerolinea; -- Borra la base de datos
create database if not exists aerolinea;
use aerolinea;

/* 
	drop table if exists pasajeros;
	drop table if exists vuelos;
	drop table if exists personal;
	drop table if exists aviones;
	drop table if exists pilotos;
	drop table if exists piloto_personal;
*/

-- SHOW TABLES; -- mostrar las tablas

-- Creamos tabla pasajeros
CREATE TABLE vuelos(
	nro int primary key auto_increment,
    horaSalida int,
    fecha date,
    horaLlegada int,
    ciudad varchar(50),
    precio double
);

create table personas (
	pasaporte int primary key,
    nombre varchar(50),
    apellido varchar(50),
    tel int,
    email varchar(50)
);

CREATE TABLE pasajeros(
	pasaporte int PRIMARY KEY,
	nro_vuelo int
);

CREATE TABLE personal(
	nroLegajo int primary key,
    nombre varchar(25),
    areaAsignada enum('azafata','soporte','limpieza','piloto'),
	nro_vuelo int
);

CREATE TABLE aviones(
	nro int primary key,
    modelo varchar(50),
    fabricante varchar(50),
    capacidad int,
    pista varchar(12),
    nro_vuelo int
);

create table pilotos(
	nroLegajo int primary key,
    nro_avion int
);

create table piloto_personal(
	id int primary key auto_increment,
    nroLegajo_piloto int,
    nroLegajo_personal int
);

/* 
	Relaciones entre tablas (alter table) 
*/

/* 
	1) alterame la tabla pasajeros
    2) agregame foreign key (fk) a la variable "nro_vuelo"
    3) referenciame la fk a la variable "nro" de la tabla vuelos
*/

alter table pasajeros 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table personal 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table aviones 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table pilotos 
add foreign key (nro_avion)
references aviones (nro);

alter table piloto_personal 
add foreign key (nroLegajo_piloto)
references pilotos (nroLegajo);

alter table piloto_personal 
add foreign key (nroLegajo_personal)
references personal (nroLegajo);

alter table personas 
add foreign key (pasaporte)
references pasajeros (pasaporte);