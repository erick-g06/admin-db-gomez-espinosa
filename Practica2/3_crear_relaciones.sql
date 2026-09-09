USE `gomez-espinosa`;

ALTER TABLE Mascotas ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente);
ALTER TABLE Atenciones_Medicas ADD CONSTRAINT fk_mascota FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota);
ALTER TABLE Atenciones_Medicas ADD CONSTRAINT fk_vet FOREIGN KEY (id_veterinario) REFERENCES Veterinarios(id_veterinario);
ALTER TABLE Prescripciones_Medicas ADD CONSTRAINT fk_atencion FOREIGN KEY (id_atencion) REFERENCES Atenciones_Medicas(id_atencion);
ALTER TABLE Prescripciones_Medicas ADD CONSTRAINT fk_med FOREIGN KEY (codigo_med) REFERENCES Medicamentos(codigo_med);
