USE `gomez-espinosa`;

INSERT INTO Clientes (DNI, nombre_completo, telefono, correo) VALUES 
('12345678-9', 'Gabriel Garcia', '555-1234', 'Gabriel-.G@mail.com'),
('87654321-0', 'Maria Lopez', '555-4321', 'maria.l@mail.com'),
('11223344-5', 'Carlos Rodas', '555-8765', 'carlos.rod@mail.com'),
('99887766-1', 'Ana Rodriguez', '555-1122', 'ana.r@mail.com'),
('44556677-2', 'Luis Fernandez', '555-3344', 'luis.f@mail.com');

INSERT INTO Mascotas (nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES 
('Eduardo', 'Perro', 'Mestizo', '2020-05-10', 1),
('Kira', 'Gato', 'Siamés', '2019-03-15', 2),
('Rex', 'Perro', 'Pastor Alemán', '2018-11-20', 3),
('Pelusa', 'Conejo', 'Angora', '2022-01-10', 4),
('Nemo', 'Pez', 'Payaso', '2023-06-05', 5);

INSERT INTO Veterinarios (DNI, nombre_completo, especialidad, telefono_directo) VALUES 
('98765432-1', 'Dr. Smith', 'Cirujano', '555-9999'),
('11111111-1', 'Dra. Laura Gomez', 'Dermatología', '555-0001'),
('22222222-2', 'Dr. Pedro Martinez', 'Traumatología', '555-0002'),
('33333333-3', 'Dra. Sofia Castro', 'Oftalmología', '555-0003'),
('44444444-4', 'Dr. Jorge Ramirez', 'Medicina General', '555-0004');

INSERT INTO Atenciones_Medicas (fecha_hora, diagnostico, costo_base, id_mascota, id_veterinario) VALUES 
('2023-10-26 10:00:00', 'Chequeo general, todo bien.', 50.00, 1, 1),
('2023-10-26 11:30:00', 'Infección en el oído derecho.', 60.00, 2, 2),
('2023-10-27 09:15:00', 'Fractura leve en pata delantera.', 120.50, 3, 3),
('2023-10-27 14:00:00', 'Revisión dental, acumulación de sarro.', 45.00, 4, 4),
('2023-10-28 16:45:00', 'Cambio de dieta recomendado por falta de nutrientes.', 30.00, 5, 5);

INSERT INTO Medicamentos (codigo_med, nombre_comercial, laboratorio, precio_unitario) VALUES 
('MED-001', 'Paracetamol Vet', 'Pedigree', 15.50),
('MED-002', 'Amoxicilina Vet', 'PetPharma', 25.00),
('MED-003', 'Ibuprofeno Canino', 'DogHealth', 18.75),
('MED-004', 'Gotas Óticas Clear', 'VisionVet', 35.20),
('MED-005', 'Vitaminas Plus', 'NutriPet', 40.00);

INSERT INTO Prescripciones_Medicas (id_atencion, codigo_med, cantidad, indicaciones) VALUES 
(1, 'MED-001', 2, 'Tomar 1 pastilla cada 12 hrs.'),
(2, 'MED-004', 1, 'Aplicar 3 gotas en el oído afectado cada 8 horas.'),
(3, 'MED-003', 1, 'Tomar media pastilla cada 12 horas por 3 días.'),
(4, 'MED-002', 2, 'Mezclar con el agua 1 vez al día.'),
(5, 'MED-005', 1, 'Espolvorear sobre la comida diariamente.');
