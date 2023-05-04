-- Traeme la cantidad de veces que se ejecuto un programa con frecuencia media en un sistema de nivel bajo
select count(*) as cantidad, frec_ejec, nivel from programas
join sistema_programa on sistema_programa.frec_ejec_programa = programas.frec_ejec
join sistemas on sistema_programa.nivel_sistema = sistemas.nivel
where (nivel = "bajo" and frec_ejec="media");

-- Traeme la suma de veces que se ejecutaron programas en el sistema


-- Traeme los programas con archivos input_output


/*
	Traeme las frecuencia de los programas con archivos 
	input_output y el nivel de su sistema 
*/														