-- Registros de sistemas
INSERT INTO `sistema`.`sistemas` (`nivel`) VALUES ('bajo');
INSERT INTO `sistema`.`sistemas` (`nivel`) VALUES ('alto');
INSERT INTO `sistema`.`sistemas` (`nivel`) VALUES ('medio');

-- Registros de programas
INSERT INTO `sistema`.`programas` (`frec_ejec`) VALUES ('alta');
INSERT INTO `sistema`.`programas` (`frec_ejec`) VALUES ('media');
INSERT INTO `sistema`.`programas` (`frec_ejec`) VALUES ('baja');

-- Registros de archivos
INSERT INTO `sistema`.`archivos` (`modo`) VALUES ('input');
INSERT INTO `sistema`.`archivos` (`modo`) VALUES ('output');
INSERT INTO `sistema`.`archivos` (`modo`) VALUES ('input-output');

-- Registros de sistema_programa
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('bajo', 'media');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('bajo', 'baja');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('alto', 'alta');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('alto', 'media');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('alto', 'baja');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('medio', 'baja');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('medio', 'media');
INSERT INTO `sistema`.`sistema_programa` (`nivel_sistema`, `frec_ejec_programa`) VALUES ('medio', 'alta');

-- Registro de programa_archivo
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('alta', 'input-output');
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('alta', 'input');
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('alta', 'output');
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('media', 'input');
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('media', 'output');
INSERT INTO `sistema`.`programa_archivo` (`frec_ejec_programa`, `modo_archivo`) VALUES ('baja', 'input');