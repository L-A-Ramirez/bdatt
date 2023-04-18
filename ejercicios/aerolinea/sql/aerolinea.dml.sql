/*
	Ingresamos registros a las tablas
 */
 select * from vuelos;
 -- tabla vuelos
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, precio) 
VALUES (12,"2023-04-24", 14, "chile",20000.59);
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad, precio) 
values (12,"2023-06-21",13,"uruguay",10000.99);
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad, precio) 
values (14,"2023-07-04",22,"madrid",28000.99);
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad, precio) 
values (16,"2023-06-02",19,"colombia",26000.99);
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad, precio) 
values (17,"2023-07-15",19,"venezuela",25000.99);

 -- tabla aviones
insert into aviones (nro,modelo,fabricante,capacidad,angar,nro_vuelo) 
values (12,"420","pampa",300,"A1",3);
insert into aviones (nro,modelo,fabricante,capacidad,angar,nro_vuelo) 
values (08,"220","Sanjuan",300,"B2",2);
insert into aviones (nro,modelo,fabricante,capacidad,angar,nro_vuelo) 
values (09,"310","pampa",300,"C4",1);

-- tabla pilotos
insert into pilotos (nroLegajo,nro_avion) values (23456745,08);
insert into pilotos (nroLegajo,nro_avion) values (23457333,08);
insert into pilotos (nroLegajo,nro_avion) values (28547986,12);

-- tabla pasajeros
insert into pasajeros (dni, nro_vuelo) values (27859865, 1);
insert into pasajeros (dni, nro_vuelo) values (24568254, 1);
insert into pasajeros (dni, nro_vuelo) values (25678443, 2);
insert into pasajeros (dni, nro_vuelo) values (24447658, 3);

-- tabla personas
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `fechaNacimiento`, `nacionalidad`, `telefono`, `email`) VALUES ('27859865', 'Roberto', 'Caseres', '1976-02-17', 'Argentina', '115435674', 'robertito@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `fechaNacimiento`, `nacionalidad`, `telefono`, `email`) VALUES ('24568254', 'Susana', 'Gimenez', '1897-01-26', 'Venezuela', '263746582', 'SSusi@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `fechaNacimiento`, `nacionalidad`, `telefono`, `email`) VALUES ('25678443', 'Brenda', 'Muro', '1998-02-15', 'Argentina', '1543256', 'brenn@gmail,com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `fechaNacimiento`, `nacionalidad`, `telefono`, `email`) VALUES ('24447658', 'gimena', 'gonzales', '1987-06-17', 'Colombia', '11879456', 'gime@gmail.com');


-- Tabla personal
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (23456745, "agustin",1,"piloto");
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (23457333, "javier",2,"piloto");
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (28547986, "Maximiliano",3,"piloto");
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (28547987, "Maximiliano",3,"piloto");

-- tabla piloto_personal
insert into pilotos_personal (nroLegajo_piloto,nroLegajo_personal) 
values (23456745,23456745);
insert into pilotos_personal (nroLegajo_piloto,nroLegajo_personal) 
values (23457333,23457333);
insert into pilotos_personal (nroLegajo_piloto,nroLegajo_personal) 
values (28547986,28547986);

-- -------------------
-- UPDATE
-- -------------------
update vuelos set fecha = "2023-04-27" where nro = 1;

-- -------------------
-- DELETEs
-- -------------------
-- delete from personal where nroLegajo = 28547986;