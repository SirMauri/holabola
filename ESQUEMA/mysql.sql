-- unique id PRIMARY KEY 

create table IF NOT EXISTS CIUDAD ( 
		   Nom_Ciudad	varchar(30) NOT NULL,
		   Pais		varchar(20) NOT NULL
);

create table IF NOT EXISTS LUGAR_A_VISITAR ( 
			 NomLugar	varchar(45) NOT NULL,
		   NomCiudad	varchar(55) NOT NULL,
		   Pais		varchar(12) NOT NULL,
		   dirLugar		varchar(80) NOT NULL,
		   desLugar	varchar(100) NOT NULL,
		   PrecioLugar INT NOT NULL
);

create table IF NOT EXISTS HOTEL ( 
			 NomHotel	VARCHAR(20) NOT NULL,
		   NomCiudad	VARCHAR(52) NOT NULL,
		   Pais	VARCHAR(12) NOT NULL,
		   DirHotel	VARCHAR(100) NOT NULL,
		   NumCuartos	INT NOT NULL,
		   PrecioCuarto	INT NOT NULL,
		   PrecioDesayuno	INT NOT NULL
);

create table IF NOT EXISTS CIRCUITO ( 
			 id_circuito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			 Descripcion	VARCHAR(100) NOT NULL,
		   CiudSalida	VARCHAR(32) NOT NULL,
		   CiudLlegada	VARCHAR(32) NOT NULL,
		   PaisSalida	VARCHAR(32) NOT NULL,
		   PaisLlegada	VARCHAR(32) NOT NULL,
		   Duracion	INT NOT NULL,
		   Precio	INT NOT NULL
);

create table IF NOT EXISTS FECHA_CIRCUITO (
			id_circuito INT NOT NULL,
			FechaSalida DATE,
			NumPersonas INT
);


insert into CIUDAD (Nom_Ciudad, Pais) VALUES ('Monterrey', 'Mexico');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Barcelona', 'España');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Ciudad de Mexico', 'Mexico');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Boston', 'USA');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Madrid', 'España');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Paris', 'Francia');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Lyon', 'Francia');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Puebla', 'Mexico');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Islas Canarias', 'España');
insert into CIUDAD (Nom_Ciudad, Pais) values ('Jalisco', 'Mexico');
insert into CIUDAD (Nom_Ciudad, Pais) values ('California', 'USA');


insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Cerro de la Silla', 'Monterrey', 'Mexico', 'cerro de la silla', 'hermoso cerro en la ciudad de monterrey', 500);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Barrio Antiguo', 'Monterrey', 'Mexico', 'barrio antiguo monterrey', 'visita el barrio más antiguo de la ciudad', 200);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Altos Hornos', 'Monterrey', 'Mexico', 'cerro de la silla', 'visita uno de los íconos de la industria en monterrey y cena en uno de los lugares más exclusivos', 600);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Camp Nou', 'Barcelona', 'España', 'colonia de aristoles marinoi', 'visita al estadio de futbol del club Barcelona', 1000);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Mercado de Barcelona', 'Barcelona', 'España', 'La Ramla', 'visita el mercado más famoso del mundo', 500);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Castillo de Chapultepec', 'Ciudad de Mexico', 'Mexico', 'bosques de chapultepec primera seccion, miguel hidalgo', 'visita el castillo más hermoso de mexico.', 800);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Museo de memoria y tolerancia', 'Ciudad de Mexico', 'Mexico', 'centro historico', 'visita el museo más famoso de méxico', 600);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Torre Latinoamericana', 'Ciudad de Mexico', 'Mexico', 'centro historico', 'visita la torre más iconica de la cdmx', 300);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Harvard', 'Boston', 'USA', 'Cambridge', 'visita la mejor escuela del mundo', 1200);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Estadio de los Red Soxs', 'Boston', 'USA', 'femway park', 'visita el estadio del equipo de los Red Soxs', 350);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Palacio de madrid', 'Madrid', 'España', 'calle del bicho siu', 'visita el palacio del bicho siu', 900);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Estadio del Real Madrid', 'Madrid', 'España', 'Santiago Bernabeu', 'visita la casa del bicho siu', 100);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Torre Eifel', 'Paris', 'Francia', 'chant de mars', 'visita la torre más famosa del mundo', 600);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Louvre', 'Paris', 'Francia', 'Roue de librou', 'visita el museo más hermoso del mundo', 300);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'basilica de nortre dame', 'Lyon', 'Francia', '8 de fourier', 'visita la básilica más hermoso del mundo', 3000);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Louvre', 'Lyon', 'Francia', 'Roue de librou', 'visita el museo más hermoso del mundo', 1000);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Templo del dolor', 'Puebla', 'Mexico', 'Zona de la udlap', 'visita la mejor universidad del mundo', 50);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Estrella de puebla', 'Puebla', 'Mexico', 'madre osa', 'visita la rueda de la fortuna sin seguro', 500);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Piramide de cholula', 'Puebla', 'Mexico', '14 poniente', 'visita la piramide más grande de cholula', 400);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Tenerife', 'Islas Canarias', 'España', 'tenerife', 'visita el lugar inspirado en la cancion del ed sheeran', 3000);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Museo de las artes', 'Jalisco', 'Mexico', 'avenida juarez', 'visita el museo de las artes', 200);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'La muraya', 'Jalisco', 'Mexico', 'tequila', 'visita la ciudad productora numero 1 de tequila', 600);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Amazon', 'California', 'USA', '96 e san fernando', 'visita la sede de amazon', 4000);
insert into LUGAR_A_VISITAR (NomLugar, NomCiudad, Pais, dirLugar, desLugar, PrecioLugar) values ( 'Google', 'California', 'USA', '1600 amp hit theatre', 'visita la sede de google', 3000);

insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel Palo Alto', 'Monterrey', 'Mexico', 'cerro de la silla', 25, 500, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel Corona', 'Monterrey', 'Mexico', 'barrio antiguo monterrey', 25, 200, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel Contla', 'Monterrey', 'Mexico', 'cerro de la silla', 25, 600, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel Aztequitas', 'Barcelona', 'España', 'colonia de aristoles marinoi', 25,1000, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel Fe', 'Barcelona', 'España', 'La Ramla', 25, 500, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel centro', 'Ciudad de Mexico', 'Mexico', 'bosques de chapultepec primera seccion, miguel hidalgo', 25, 800, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel hampton', 'Ciudad de Mexico', 'Mexico', 'cerro de la silla', 25, 600, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel historico', 'Ciudad de Mexico', 'Mexico', 'centro historico', 25, 300, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel four points', 'Ciudad de Mexico', 'Mexico', 'cerro de la silla', 25, 600, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel continental', 'Boston', 'USA', 'Cambridge',  25,1200, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel americas', 'Boston', 'USA', 'femway park', 25, 350, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel san andres', 'Madrid', 'España', 'calle del bicho sio', 25, 900, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel attuck', 'Madrid', 'España', 'Santiago Bernabeu', 25, 100, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel joher', 'Paris', 'Francia', 'chant de mars', 25, 600, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel bicho sii', 'Paris', 'Francia', 'Roue de librou', 25, 300, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel louvre', 'Lyon', 'Francia', '8 de fourier',  25,3000, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel catedral', 'Lyon', 'Francia', 'Roue de librou',  25,1000, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel de la rueda', 'Puebla', 'Mexico', 'Zona de la udlap', 25, 50, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel london', 'Puebla', 'Mexico', 'madre osa', 25, 500, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel brindis', 'Puebla', 'Mexico', '14 poniente', 25, 400, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel loustaunau','Islas Canarias', 'España', 'tenerife', 25,3000, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel zechinelli', 'Jalisco', 'Mexico', 'avenida juarez', 25, 200, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel el dubai', 'Jalisco', 'Mexico', 'tequila', 25, 600, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel starostenko', 'California', 'USA', '96 e san fernando',  25, 4000, 120);
insert into HOTEL (NomHotel, NomCiudad, Pais, DirHotel, NumCuartos, PrecioCuarto, PrecioDesayuno) values ( 'Hotel silicon', 'California', 'USA', '1600 amp hit theatre', 25, 3000, 120);

insert into CIRCUITO (Descripcion, CiudSalida, CiudLlegada, PaisSalida, PaisLlegada, Duracion, Precio) values ( 'Sal de monterrey hacia puebla y visita puebla', 'Monterrey', 'Puebla', 'Mexico', 'Mexico', 2, 5000);
insert into CIRCUITO (Descripcion, CiudSalida, CiudLlegada, PaisSalida, PaisLlegada, Duracion, Precio) values ( 'Sal de francia a silicon valley por 3 dias', 'Paris', 'California', 'Francia', 'USA', 3, 8000);
insert into CIRCUITO (Descripcion, CiudSalida, CiudLlegada, PaisSalida, PaisLlegada, Duracion, Precio) values ( 'Sal de barcelona y llega a lyon', 'Barcelona', 'Lyon', 'España', 'Francia', 5, 10000);
insert into CIRCUITO (Descripcion, CiudSalida, CiudLlegada, PaisSalida, PaisLlegada, Duracion, Precio) values ( 'Sal de la cdmx y llega a islas canarias', 'Ciudad de Mexico', 'Islas Canarias', 'Mexico', 'España', 7, 30000);
