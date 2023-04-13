/*
	Consultas
*/

select * from vuelos;
select * from pasajeros;
select * from personal;
select * from aviones;
select * from pilotos;
select * from piloto_personal;

-- Se requiere saber las horas totales de los pilotos en los vuelos y la ciudad de destino
select horaSalida, horaLlegada, (horaLlegada - horaSalida) as totalHoras, ciudad from vuelos;

-- Se requiere saber la cantidad de pasajeros con destino a bariloche
select count(*) as pasajeros_a_bariloche from pasajeros where nro_vuelo = 1; -- no se usa