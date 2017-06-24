-- Jose Borges - Venezuela
-- Base de datos 
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
drop database if exists employee_employee;

create database employee_employee;

\c employee_employee;


CREATE TABLE employee(
id_employee serial NOT NULL,
first_name char(50) NULL,
last_name char(50) NULL,
id_employee_department int NOT NULL,
CONSTRAINT pk_employee PRIMARY KEY (id_employee));


CREATE TABLE employee_department(
id_employee_department serial NOT NULL,
name char(50) NULL,
description char(255) NULL,
CONSTRAINT pk_employee_department PRIMARY KEY (id_employee_department));

alter table employee add constraint fk_id_employee_department foreign key(id_employee_department) references employee_department(id_employee_department);

INSERT INTO employee_department(name, description) VALUES ('ADMINISTRACION','ENCARGADO DE TODO LA ADMINISTRACION DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('VENTAS','VENTAS INTEGRALES');
INSERT INTO employee_department(name, description)  VALUES ('COMPRAS','DEPARTAMENTO DE COMPRAS DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('SOPORTE','ESTABLECE EL BUEN FUNCIONAMIENTO DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('PUBLICIDAD','PROMOCION DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('SISTEMAS','ENCARGADO DE LOS SISTEMAS DE LA EMPRESA');

INSERT INTO employee(first_name, last_name,id_employee_department) VALUES ('JOSE','BORGES',6);
INSERT INTO employee(first_name, last_name,id_employee_department) VALUES ('JUAN','PEREZ',1);
INSERT INTO employee(first_name, last_name,id_employee_department) VALUES ('CARLOS','MAVAREZ',3);
INSERT INTO employee(first_name, last_name,id_employee_department) VALUES ('LUIS','GALINDO',5);

CREATE TABLE employee_hobby(
id_employee_hobby serial NOT NULL,	
name char(50) NULL,
description char(255) NULL,
CONSTRAINT pk_employee_hobby PRIMARY KEY (id_employee_hobby));

CREATE TABLE asign_hobby(
id_employee_hobby int NOT NULL,	
id_employee int NOT NULL,
CONSTRAINT fk_id_employee foreign key(id_employee) references employee(id_employee),
CONSTRAINT fk_id_employee_hobby foreign key(id_employee_hobby) references employee_hobby(id_employee_hobby));

INSERT INTO employee_hobby(name, description) VALUES ('GAMER','JUGADOR EN LINEA');
INSERT INTO employee_hobby(name, description)  VALUES ('COLECCION','COLECCIONISTA');
INSERT INTO employee_hobby(name, description)  VALUES ('DEPORTES','PARTICIPA EN DEPORTES');

INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(1,1);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(3,1);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(2,2);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(1,2);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(3,3);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(2,3);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(2,4);
INSERT INTO asign_hobby(id_employee_hobby,id_employee) VALUES(3,4);


CREATE TABLE boss_department(
id_boss_department serial NOT NULL,
id_employee_department int NOT NULL,
id_employee int NOT NULL,
CONSTRAINT fk_id_employee foreign key(id_employee) references employee(id_employee),
CONSTRAINT fk_id_employee_department foreign key(id_employee_department) references employee_department(id_employee_department));

INSERT INTO boss_department(id_employee_department,id_employee) values(1,1);
INSERT INTO boss_department(id_employee_department,id_employee) values(2,2);
INSERT INTO boss_department(id_employee_department,id_employee) values(3,3);
INSERT INTO boss_department(id_employee_department,id_employee) values(4,4);
