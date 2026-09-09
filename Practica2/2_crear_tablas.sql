USE `gomez-espinosa`;

CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  DNI VARCHAR(20),
  nombre_completo VARCHAR(100),
  telefono VARCHAR(15),
  correo VARCHAR(100)
);

CREATE TABLE Mascotas (
  id_mascota INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  especie VARCHAR(50),
  raza VARCHAR(50),
  fecha_nacimiento DATE,
  id_cliente INT
);

CREATE TABLE Veterinarios (
  id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
  DNI VARCHAR(20),
  nombre_completo VARCHAR(100),
  especialidad VARCHAR(50),
  telefono_directo VARCHAR(15)
);

CREATE TABLE Atenciones_Medicas (
  id_atencion INT AUTO_INCREMENT PRIMARY KEY,
  fecha_hora DATETIME,
  diagnostico VARCHAR(500),
  costo_base DECIMAL(10,2),
  id_mascota INT,
  id_veterinario INT
);

CREATE TABLE Medicamentos (
  codigo_med VARCHAR(20) PRIMARY KEY,
  nombre_comercial VARCHAR(100),
  laboratorio VARCHAR(100),
  precio_unitario DECIMAL(10,2)
);

CREATE TABLE Prescripciones_Medicas (
  id_atencion INT,
  codigo_med VARCHAR(20),
  cantidad INT,
  indicaciones VARCHAR(500),
  PRIMARY KEY (id_atencion, codigo_med)
);
