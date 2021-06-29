-- CONSULTAS

-- • Nombre de los doctores y cuantos partos han tenido en la maternidad. 
-- Ejemplo: Doctor Jose Moreira tubo 5 partos, Doctor Juan Mero tubo 8 partos.

SELECT D.NOMBRES, D.APELLIDOS, 	COUNT(P.ID_DOCTOR) AS partos 
FROM PARTO AS P 
INNER JOIN DOCTOR AS D 
ON P.ID_DOCTOR = D.ID
GROUP BY 
D.NOMBRES,
D.APELLIDOS

-- Cuantos tratamientos la madre ha tenido hasta la maternidad. 
-- Ejemplo: Madre Karina Barreto ha tenido 10 tratamientos por parte de 2 Doctores, 
-- Madre Luisa Loor ha tenido 5 tratamientos por parte de 1 Doctor.


SELECT P.NOMBRES, P.APELLIDOS, 	COUNT(T.ID_PACIENTE) AS TRATAMIENTOS, 
D.NOMBRES AS NOMBRE_DOCTOR, D.APELLIDOS AS APELLIDOS_DOCTOR
FROM TRATAMIENTO AS T 
INNER JOIN PACIENTE AS P 
ON T.ID_PACIENTE = P.ID
INNER JOIN DOCTOR AS D
ON T.ID_DOCTOR = D.ID
GROUP BY 
P.NOMBRES,
P.APELLIDOS,
D.NOMBRES,
D.APELLIDOS


-- Poder determinar la cantidad de Neonatos(fetos) que han nacido en predeterminadas salas 
-- por parto normal o parto de cesárea. Ejemplo: En la sala 3-A se han realizado 6 partos, 4 normal 
-- y 2 cesárea.

SELECT S.NOMBRE, COUNT(P.TIPO) AS CANTIDAD, P.TIPO  FROM PARTO AS P 
INNER JOIN SALA AS S 
ON P.ID_SALA = S.ID
GROUP BY 
S.NOMBRE,
P.TIPO



-- Definir La cantidad de transporte que ha realizado cada chofer. 
-- Ejemplo: Cuantos transporte de ambulancia ha realizado desde que ingreso a la clínica.

SELECT CH.CHOFER, COUNT(*) CANTIDAD_TRANSPORTE FROM TRANSPORTE
SELECT CH.NOMBRE, COUNT(*) CANTIDAD_TRANSPORTE FROM TRANSPORTE AS T 
INNER JOIN CHOFER AS CH 
ON T.ID_CHOFER = CH.ID
GROUP BY 
CH.NOMBRE