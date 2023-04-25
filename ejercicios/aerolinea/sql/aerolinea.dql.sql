/*
	Consultas
*/

/* Consulta de columnas calculadas */
-- Se requiere saber las horas totales de los pilotos en los vuelos y la ciudad de destino
select horaSalida, horaLlegada, (horaLlegada - horaSalida) as totalHoras, ciudad from vuelos;

-- Quiero sacar un descuento del 20% a todos los vuelos
select ciudad, precio, (precio*0.80) as descuento_20 from vuelos;

-- Quiero mostrar el precio del incremento del 10% del pasaje de los vuelos
select ciudad, precio, (precio*1.10) as incremento_10 from vuelos;

/* Consulta condicionadas y con funciones */
-- Se requiere saber la cantidad de pasajeros con destino a chile (1)
select count(*) as pasajeros_a_bariloche from pasajeros where nro_vuelo = 1; -- no se usa

-- Se requiere saber cual es el precio más alto de un vuelo
select ciudad, max(precio) precioMaximo from vuelos;

-- Se requiere saber cual es el precio más bajo de un vuelo
select ciudad, min(precio) precioMinimo from vuelos;

-- Obtenemos la suma total de vuelos a venezuela
select ciudad, sum(precio) suma_total from vuelos where ciudad = "venezuela";

-- Obtenemos el promedio total de vuelos a venezuela
select ciudad, avg(precio) promedio_total from vuelos where ciudad = "venezuela";

/* 
	consultas condicionadas:
    menor (<), mayor(>), menor igual (<=), mayor igual (>=), distinto (!=)
    and, between, or/in, 
*/
-- Se requiere saber cual es el precio menor o igual a 20000
select ciudad, precio from vuelos where precio <= 20000;

-- Se requiere saber cual es el precio mayor o igual a 20000
select ciudad, precio from vuelos where precio >= 20000;

-- Se necesita saber el rango de precios entre "20000 y 30000"
select ciudad, precio from vuelos where precio > 20000 and precio < 30000;
select ciudad, precio from vuelos where precio between 20000 and 30000;

-- Quiero localizar el vuelo de venezuela con precio "20000.99"
select ciudad, precio from vuelos where ciudad = "venezuela" and precio = "20000.99";

-- Quiero obtener registros solo de venezuela y chile
select ciudad, precio from vuelos where ciudad = "venezuela" or ciudad = "chile";
select ciudad, precio from vuelos where ciudad in("venezuela","chile");

-- Quiero localizar el vuelo de venezuela con el precio más bajo
select ciudad, min(precio) precio_minimo from vuelos where ciudad = "venezuela";

-- Quiero localizar el vuelo de venezuela con el precio más alto
select ciudad, max(precio) precio_maximo from vuelos where ciudad = "venezuela";

-- Group by (having)
select count(*), ciudad from vuelos group by ciudad;

/* 
	Agrupamos y contamos la suma de precio de los vuelos que sean mayores 
	al promedio del precio de chile
*/

-- resultado de la consulta que se guarda en la variable @promVuelosChile
select @promVuelosChile:=avg(precio) from vuelos where ciudad = "chile";

select avg(precio), ciudad from vuelos
group by ciudad having avg(precio) > @promVuelosChile;

-- Se requiere saber cual es el maximo de horas de un piloto
select @maximoHorasVuelo := max(horaLlegada - horaSalida) from vuelos;

select horaSalida, horaLlegada, (horaLlegada - horaSalida) totalHoras, ciudad
from vuelos having totalHoras =  @maximoHorasVuelo;

/* 
	Join
    1) selecciono los campos de distintas tablas
    2) de pasajeros unime a vuelos (from pasajeros join vuelos)
    3) relacionamos las llave (fk y pk) "pasajeros.nro_vuelo = vuelos.nro"
*/

select pasaporte ,ciudad, precio from pasajeros 
join vuelos on pasajeros.nro_vuelo = vuelos.nro;

-- Obtenemos la cantidad de pasajeros con destino a chile
select count(*) as cantidad_pasajeros, ciudad from pasajeros 
join vuelos on pasajeros.nro_vuelo = vuelos.nro where ciudad = "chile";

/* 
	Se quiere saber el pasaporte,nombre, apellido,ciudad,hora de salida 
    y la pista del avion con destino a colombia.
    
	seleccioname pasaporte de pasajeros,su nombres y apellido de la tabla
    personas, la ciudad, la hora de salida y el precio de la tabla vuelos 
    y la pista de la tabla aviones
*/
select pas.pasaporte,per.nombre,per.apellido,v.ciudad,v.horaSalida,v.precio,a.pista
from vuelos v left join pasajeros pas on v.nro = pas.nro_vuelo
join personas per on pas.pasaporte = per.pasaporte
join aviones a on v.nro = a.nro_vuelo;

/* 
	left join: Trae todos los registros de la izquierda que tengan y no tenga relación con la tabla derecha
    right join: Trae todos los registros de la derecha que tengan y no tenga relación con la tabla izquierda
    inner join: Trae todos los registros que solo tengan relación (es igual a "join")
*/

select pas.pasaporte,v.ciudad,v.horaSalida,v.precio
from vuelos v right join pasajeros pas on v.nro = pas.nro_vuelo;

/*
	Quiero saber nombre del piloto, el modelo de avion y el fabricante
    la ciudad y las horas totales de vuelo
 */
 
select p.nroLegajo,p.nombre, a.modelo, a.fabricante, v.ciudad, (v.horaLlegada - v.horaSalida) totalHoras
from vuelos v
join personal p on p.nro_vuelo = v.nro
join piloto_personal p_p on p_p.nroLegajo_personal = p.nroLegajo
join pilotos pi on p_p.nroLegajo_piloto = pi.nroLegajo
join aviones a on pi.nro_avion = a.nro;

