-- Jose Borges - Venezuela
-- Base de datos 

drop database if exists employee_employee;

create database employee_employee;

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

alter table employee add constraint fk_id_employee_department foreign key(id_employee_department) references employee_department(id_employee_department) on delete cascade on update cascade;

INSERT INTO employee_department(name, description) VALUES ('ADMINISTRACION','ENCARGADO DE TODO LA ADMINISTRACION DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('VENTAS','VENTAS INTEGRALES');
INSERT INTO employee_department(name, description)  VALUES ('COMPRAS','DEPARTAMENTO DE COMPRAS DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('SOPORTE','ESTABLECE EL BUEN FUNCIONAMIENTO DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('PUBLICIDAD','PROMOCION DE LA EMPRESA');
INSERT INTO employee_department(name, description)  VALUES ('SISTEMAS','ENCARGADO DE LOS SISTEMAS DE LA EMPRESA');

INSERT INTO employee VALUES (1, 'JOSE','BORGES',6);
INSERT INTO employee VALUES (2, 'JUAN','PEREZ',1);
INSERT INTO employee VALUES (3, 'CARLOS','MAVAREZ',3);
INSERT INTO employee VALUES (4, 'LUIS','GALINDO',5);