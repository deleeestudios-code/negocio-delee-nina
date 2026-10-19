-- Categorías (3)
INSERT INTO categorias (nombre) VALUES ('Electrónica'), ('Ropa'), ('Hogar');

-- Productos (12)
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Laptop', 1, 850.00, 4),
('Mouse', 1, 25.00, 15),
('Teclado', 1, 45.00, 8),
('Monitor', 1, 200.00, 3),
('Camisa', 2, 20.00, 25),
('Pantalón', 2, 35.00, 12),
('Zapatos', 2, 50.00, 6),
('Chaqueta', 2, 70.00, 4),
('Cafetera', 3, 60.00, 10),
('Licuadora', 3, 40.00, 7),
('Microondas', 3, 120.00, 2),
('Tostadora', 3, 30.00, 14);

-- Clientes (6)
INSERT INTO clientes (nombre, telefono, email) VALUES 
('Juan Pérez', '70012345', 'juan@email.com'),
('María Gómez', '71123456', 'maria@email.com'),
('Carlos López', '72234567', 'carlos@email.com'),
('Ana Torres', '73345678', 'ana@email.com'),
('Luis Rojas', '74456789', 'luis@email.com'),
('Sofía Vargas', '75567890', 'sofia@email.com');

-- Pedidos (10)
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2026-10-01', 'Completado'),
(1, '2026-10-05', 'Pendiente'),
(2, '2026-10-02', 'Completado'),
(3, '2026-10-03', 'Enviado'),
(4, '2026-10-04', 'Completado'),
(5, '2026-10-06', 'Pendiente'),
(2, '2026-10-07', 'Completado'),
(3, '2026-10-08', 'Cancelado'),
(6, '2026-10-09', 'Completado'),
(4, '2026-10-10', 'Completado');

-- Detalle de Pedidos (25 líneas)
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 850.00), (1, 2, 2, 25.00),
(2, 5, 2, 20.00), (2, 6, 1, 35.00),
(3, 9, 1, 60.00), (3, 10, 1, 40.00),
(4, 3, 1, 45.00), (4, 4, 1, 200.00),
(5, 7, 1, 50.00), (5, 8, 1, 70.00),
(6, 11, 1, 120.00), (6, 12, 2, 30.00),
(7, 1, 1, 850.00), (7, 3, 1, 45.00),
(8, 5, 3, 20.00), (8, 6, 2, 35.00),
(9, 2, 4, 25.00), (9, 4, 1, 200.00),
(10, 9, 1, 60.00), (10, 11, 1, 120.00),
(1, 10, 1, 40.00), (2, 12, 1, 30.00),
(3, 7, 1, 50.00), (4, 8, 1, 70.00), (5, 2, 1, 25.00);