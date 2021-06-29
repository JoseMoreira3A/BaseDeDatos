-- INGRESO DE DATOS
INSERT INTO CONTACTO VALUES (1, '0986542535', '2654515','09886545424','1245788788','DASDAS@GMAIL.COM');
INSERT INTO CONTACTO VALUES (2, '0999999999', '2687845','09886963877','0988588782','DDDDSAAAAA@GMAIL.COM');


INSERT INTO DOCTOR VALUES (1, 1, '1351248001','JUAN','MERO');
INSERT INTO DOCTOR VALUES (2, 2, '1361455001','MARIA','GOMEZ');


INSERT INTO PACIENTE VALUES (1, '1350415006','LUISA', 'VERA', '1996-02-03', '1.70', 'O+');
INSERT INTO PACIENTE VALUES (2, '1354878221','JOSEFA', 'LOPEZ', '1995-02-03', '1.70', 'O-');


INSERT INTO HABITO VALUES (1, 1, 'FUMADORA');


INSERT INTO CITA VALUES (1, 1, 1, '2021-06-05','2021-06-10','DENGUE','EXAMENES DE SANGRE', '10:00');
INSERT INTO CITA VALUES (2, 2, 2, '2021-06-06','2021-06-15','GRIPE','EXAMENES DE SANGRE', '10:00');

SELECT * FROM PARTO
INSERT INTO NEOFATO VALUES (1, 'VIVO', 'null' ,'1.6','35 cm', 'M', 'CARLOS VERA');
INSERT INTO NEOFATO VALUES (2, 'VIVO', 'null' ,'1.6','35 cm', 'M', 'LUIS SANTANA');

INSERT INTO SALA VALUES (1,'B-14');
INSERT INTO SALA VALUES (2,'B-16');



INSERT INTO PARTO VALUES (1, 2, 1, 1, 1, '2021-06-15', '9:00', '11:00', 'NORMAL');
INSERT INTO PARTO VALUES (2, 1, 1, 2, 2, '2021-06-16', '12:00', '13:00', 'NORMAL');
INSERT INTO PARTO VALUES (3, 1, 2, 2, 1, '2021-06-16', '12:00', '13:00', 'NORMAL');
INSERT INTO PARTO VALUES (4, 1, 2, 2, 1, '2021-06-16', '12:00', '13:00', 'CESAREA');

SELECT * FROM TRATAMIENTO
INSERT INTO TRATAMIENTO VALUES (1, 1, 1, 'VITAMINAS C');
INSERT INTO TRATAMIENTO VALUES (2, 1, 1,'CALCIO');
INSERT INTO TRATAMIENTO VALUES (3, 2, 2, 'HIERRO');

INSERT INTO CHOFER VALUES (1, 'RAUL', 'MENENDEZ');
INSERT INTO CHOFER VALUES (2, 'STALIN', 'LOPEZ');


INSERT INTO TRANSPORTE VALUES (1, 1, 1, 1, '2021-06-06','20:00', 'FAE');
INSERT INTO TRANSPORTE VALUES (2, 1, 2, 2, '2021-06-07','20:00', 'CLINICAL DEL SOL');