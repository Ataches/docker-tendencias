-- RUN IT IN DATABASE
-- // CREATING TABLES //

CREATE TABLE cliente (
    customer_id INTEGER NOT NULL,
	cliente_nombre VARCHAR(100),
    cliente_direccion VARCHAR(100),
	cliente_telefono DOUBLE,
	PRIMARY KEY (customer_id)
);

CREATE TABLE producto (
    product_id INTEGER NOT NULL,
	producto_nombre VARCHAR(100),
    producto_descripcion VARCHAR(100),
	producto_valor INTEGER,
	producto_cantidad INTEGER,
	PRIMARY KEY (product_id)
);

CREATE TABLE carrito(
    carrito_id INTEGER NOT NULL,
	status_carrito VARCHAR(100),
    date_carrito VARCHAR(100),
    customer_id_fk INTEGER NOT NULL,
	PRIMARY KEY (carrito_id),
	FOREIGN KEY (customer_id_fk)
	REFERENCES cliente(customer_id)
);


CREATE TABLE cantidad(
	quantity_id INTEGER NOT NULL,
	cantidad_seleccionada INTEGER NOT NULL,
    carrito_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
	PRIMARY KEY (quantity_id),
	FOREIGN KEY (carrito_id)
	REFERENCES carrito(carrito_id),
	FOREIGN KEY (producto_id)
	REFERENCES producto(product_id)
);

-- // INSERTING DATA //

INSERT INTO cliente (customer_id, cliente_nombre, cliente_direccion, cliente_telefono)
VALUES (1, 'Antonio Perez', 'Calle 40 8 30', 3154891100),
(2, 'Jose Villada', 'Call 20 39 20', 3154515200),
(3, 'Matby Yoslin', 'Cr 7 24 86', 3105500000);

INSERT INTO producto (product_id, producto_nombre, producto_descripcion, producto_valor, producto_cantidad)
VALUES (1, 'Arroz', 'Descripcion arroz', 3500, 10),
(2, 'Aceite', 'Descripcion aceite', 4500, 20),
(3, 'Leche', 'Descripcion leche', 5500, 30);

INSERT INTO carrito (carrito_id, status_carrito, date_carrito, customer_id_fk)
VALUES (1, 'Creado', '2021-04-18 23:56:40', 2),
(2, 'En Creación', '2021-04-16 02:56:40', 3),
(3, 'Error', '2021-04-16 09:56:40', 3),
(4, 'Finalizado', '2021-04-14 05:56:40', 1);