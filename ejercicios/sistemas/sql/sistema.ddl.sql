drop database if exists sistema; -- Borra la base de datos
create database if not exists sistema;
use sistema;

-- Creamos tabla pasajeros
CREATE TABLE sistemas(
	nivel enum("bajo","medio","alto") primary key
);

create table programas (
	frec_ejec enum ("baja","media","alta") primary key
);

CREATE TABLE archivos(
	modo enum ("input","output","input-output") primary key
);

CREATE TABLE sistema_programa(
	id int primary key auto_increment,
    nivel_sistema enum("bajo","medio","alto"),
    frec_ejec_programa enum ("baja","media","alta")
);

CREATE TABLE programa_archivo(
	id int primary key auto_increment,
	frec_ejec_programa enum ("baja","media","alta"),
    modo_archivo enum ("input","output","input-output")
);

/* 
	Relaciones entre tablas (alter table) 
*/

/* 
	1) alterame la tabla pasajeros
    2) agregame foreign key (fk) a la variable "nro_vuelo"
    3) referenciame la fk a la variable "nro" de la tabla vuelos
*/

alter table sistema_programa 
add foreign key (nivel_sistema)
references sistemas (nivel);

alter table sistema_programa 
add foreign key (frec_ejec_programa)
references programas (frec_ejec);

alter table programa_archivo 
add foreign key (frec_ejec_programa)
references programas (frec_ejec);

alter table programa_archivo 
add foreign key (modo_archivo)
references archivos (modo);