/*
	Ingresamos registros a las tablas
 */
 
 -- tabla vuelos
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad) 
VALUES (12,"2023-04-24", 14, "brc");
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad) 
values (12,"2023-06-21",13,"mdq");
insert into vuelos (horaSalida,fecha,horaLlegada,ciudad) 
values (14,"2023-07-05",22,"madrid");

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
insert into pasajeros (pasaporte, nro_vuelo) values (27859865, 1);
insert into pasajeros (pasaporte, nro_vuelo) values (25678443, 2);
insert into pasajeros (pasaporte, nro_vuelo) values (24447658, 3);

-- Tabla personal
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (23456745, "agustin",1,"piloto");
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (23457333, "javier",2,"piloto");
insert into personal (nroLegajo, nombre, nro_vuelo, areaAsignada)
values (28547986, "Maximiliano",3,"piloto");

-- tabla piloto_personal
insert into piloto_personal (nroLegajo_piloto,nroLegajo_personal) 
values (23456745,23456745);
insert into piloto_personal (nroLegajo_piloto,nroLegajo_personal) 
values (23457333,23457333);
insert into piloto_personal (nroLegajo_piloto,nroLegajo_personal) 
values (28547986,28547986);


/*
	Consultas
*/

select * from vuelos;
select * from pasajeros;
select * from personal;
select * from aviones;
select * from pilotos;
select * from piloto_personal;

select horaSalida, horaLlegada, (horaLlegada - horaSalida) as totalHoras from vuelos;