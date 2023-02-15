
CREATE TABLE viajes.recorrido
(
id_recorrido int not null,
nombre varchar(100) not null,
descripcion text not null,
primary key (id_recorrido),
unique (nombre)
);
commit;

CREATE TABLE viajes.bitacora
(
id_bitacora int not null,
id_turista int not null,
id_recorrido int not null,
fecha date,
Karma set ('excelente', 'bien', 'podria mejorar', 'malo'),
primary key (id_bitacora),
foreign key (id_turista) references turista(id_turista),
foreign key (id_recorrido) references recorrido(id_recorrido)
);
commit;


CREATE TABLE viajes.idioma
(
id_idioma int not null,
nombre varchar(100) not null,
primary key (id_idioma)
);
commit;

ALTER TABLE viajes.turista
add id_idioma int not null;
commit;

ALTER TABLE viajes.turista
add foreign key (id_idioma) references idioma(id_idioma);
commit;

CREATE TABLE viajes.numeros
(
cero int(5) zerofill,
precio int default 100
);
commit;

ALTER TABLE viajes.recorrido
add duracion int;
commit;

ALTER TABLE viajes.turista
modify pais varchar(100);

ALTER TABLE viajes.turista 
ADD FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma);
commit;

UPDATE viajes.turista SET id_idioma = '1' WHERE id_turista = 1;
UPDATE viajes.turista SET id_idioma = '2' WHERE id_turista = 2;
UPDATE viajes.turista SET id_idioma = '3' WHERE id_turista = 3;
commit;




