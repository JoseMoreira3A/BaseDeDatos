CREATE TABLE CONTACTO(
	ID SERIAL,	
	CELULAR VARCHAR(15),
	CONVENCIONAL VARCHAR(15),
	OFICINA VARCHAR(15),
	EMERGENCIA VARCHAR(15),
	CORREO VARCHAR(100),
	PRIMARY KEY (ID)
);

CREATE TABLE DOCTOR(
	ID SERIAL,	
	ID_CONTACTO INTEGER,
	CEDULA VARCHAR(11),
	NOMBRES VARCHAR(255),
	APELLIDOS VARCHAR(255),
	ESPECIALIDAD VARCHAR(50),
	PRIMARY KEY (ID),
    CONSTRAINT FK_CONTACTO FOREIGN KEY(ID_CONTACTO) REFERENCES CONTACTO(ID)		
);

CREATE TABLE PACIENTE(
	ID SERIAL,	
	CEDULA VARCHAR(255),
	NOMBRES VARCHAR(255),
	APELLIDOS VARCHAR(255),
	FECHA_NACIMIENTO DATE,
	TALLA VARCHAR(100),
	TIPO_SANGRE VARCHAR(20),
	CORREO VARCHAR(50),
	PRIMARY KEY (ID)
);

CREATE TABLE HABITO(
	ID SERIAL,	
	ID_PACIENTE INTEGER,
	TIPO VARCHAR(255),	
	PRIMARY KEY (ID),
	CONSTRAINT FK_HABITOS FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID)		

);

CREATE TABLE CITA(
	ID SERIAL,	
	ID_PACIENTE INTEGER,
	ID_DOCTOR INTEGER,
	FECHA_PROGRAMADA DATE,
	FECHA_PROXIMA_CITA DATE,
	DIAGNOSTICO VARCHAR(10),
	EXAMENES VARCHAR(50),
	HORA_CITA TIME,
	PRIMARY KEY (ID),
    CONSTRAINT FK_PACIENTE FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID),
	CONSTRAINT FK_DOCTOR FOREIGN KEY(ID_DOCTOR) REFERENCES DOCTOR(ID)		
);

CREATE TABLE NEOFATO(
	ID SERIAL,	
	ESTADO VARCHAR(50),
	DESCRIPCION VARCHAR(255),
	PESO VARCHAR(50),
	TALLA VARCHAR(50),
	SEXO VARCHAR(50),
	NOMBRE VARCHAR(50),		
	PRIMARY KEY (ID)
   	
);

CREATE TABLE SALA(
	ID SERIAL,	
	NOMBRE VARCHAR(50),	
	PRIMARY KEY (ID)  
);
	

CREATE TABLE PARTO(
	ID SERIAL,	
	ID_PACIENTE INTEGER,
	ID_DOCTOR INTEGER,
	ID_NEOFATO INTEGER,
	ID_SALA INTEGER,
	FECHA DATE,
	HORA_ENTRADA TIME,
	HORA_SALIDA TIME,
	TIPO VARCHAR(50),
	PRIMARY KEY (ID),
    CONSTRAINT FK_PACIENTE FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID),
	CONSTRAINT FK_DOCTOR FOREIGN KEY(ID_DOCTOR) REFERENCES DOCTOR(ID),
	CONSTRAINT FK_NEOFATO FOREIGN KEY(ID_NEOFATO) REFERENCES NEOFATO(ID),		
	CONSTRAINT FK_SALA FOREIGN KEY(ID_SALA) REFERENCES SALA(ID)		

);


	

CREATE TABLE TRATAMIENTO(
	ID SERIAL,	
	ID_PACIENTE INTEGER,
	ID_DOCTOR INTEGER,
	DETALLE VARCHAR(255),
	PRIMARY KEY (ID),
    CONSTRAINT FK_PACIENTE FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID),
	CONSTRAINT FK_DOCTOR FOREIGN KEY(ID_DOCTOR) REFERENCES DOCTOR(ID)

);

CREATE TABLE ECOGRAFIA	(
	ID SERIAL,
	ID_PACIENTE INTEGER,
	DENSIDAD VARCHAR(255),
	GLUCOSA VARCHAR(255),
	NITRITOS VARCHAR(255),
	EDAD_GESTACIONAL VARCHAR(50),
	PRIMARY KEY (ID),
    CONSTRAINT FK_PACIENTE FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID)
	
);

CREATE TABLE TRANSPORTE(
	ID SERIAL,
	ID_DOCTOR INTEGER,
	ID_PACIENTE INTEGER,
	ID_CHOFER INTEGER,
	FECHA_SALIDA DATE,
	HORA_SALIDA TIME,
	CLINICA VARCHAR(50),
	PRIMARY KEY (ID),
    CONSTRAINT FK_PACIENTE FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(ID),
	CONSTRAINT FK_DOCTOR FOREIGN KEY(ID_DOCTOR) REFERENCES DOCTOR(ID),
	CONSTRAINT FK_CHOFER FOREIGN KEY(ID_CHOFER) REFERENCES CHOFER(ID)

);
	
CREATE TABLE CHOFER(
	ID SERIAL,
	NOMBRE VARCHAR(50),
	APELLIDO VARCHAR(50),
	PRIMARY KEY (ID)

);

CREATE TABLE INSUMO(
	ID SERIAL,
	DETALLE INTEGER,
	CANTIDAD INTEGER,
	PRECIO DATE,
	TOTAL DATE,	
	PRIMARY KEY (ID)

);

CREATE TABLE GASTOS(
	ID SERIAL,
	PRODUCTO INTEGER,
	CANTIDAD INTEGER,
	PRIMARY KEY (ID)

);