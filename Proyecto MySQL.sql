alter table viajes.turista
add nombre varchar(100) not null;
commit;

insert into viajes.turista (id_turista, pais, sexo, edad, nombre) values (1, 'El Salvador', 'M', 25, 'Jorge');
insert into viajes.turista (id_turista, pais, sexo, edad, nombre) values (2, 'Guatemala', 'F', 30, 'Maria');
insert into viajes.turista (id_turista, pais, sexo, edad, nombre) values (3, 'Mexico', 'M', 20, 'Luis');
commit;

select * from viajes.turista;
select * from viajes.recorrido;
select * from viajes.bitacora;
select * from viajes.numeros;
insert into viajes.numeros values(5,10.3);

insert into viajes.idioma (id_idioma, nombre) values (1, 'ingles');
insert into viajes.idioma (id_idioma, nombre) values (2, 'español');
insert into viajes.idioma (id_idioma, nombre) values (3, 'ruso');
commit;
select * from viajes.idioma;

UPDATE turista SET id_idioma = '1' WHERE id_turista = 1;
UPDATE turista SET id_idioma = '2' WHERE id_turista = 2;
UPDATE turista SET id_idioma = '3' WHERE id_turista = 3;
commit;
