use <SUSTITUYA NOMBRE DE SU ESQUEMA>;
CREATE TABLE cliente (
  cliente_id int(10) NOT NULL AUTO_INCREMENT, 
  nombre     varchar(30) NOT NULL, 
  apellicos  varchar(30) NOT NULL, 
  PRIMARY KEY (cliente_id));
CREATE TABLE Compra (
  compra_id      int(10) NOT NULL AUTO_INCREMENT, 
  numero_factura varchar(50) NOT NULL, 
  fecha_compra   date NOT NULL, 
  pagada         tinyint(1) NOT NULL, 
  proveedor_id   int(10) NOT NULL, 
  PRIMARY KEY (compra_id));
CREATE TABLE detalle_preparacion_producto (
  detalle_preparacion_id     int(10) NOT NULL AUTO_INCREMENT, 
  cantidad_usada_ingrediente float NOT NULL, 
  producto_id                int(10) NOT NULL, 
  numero_item                int(10) NOT NULL, 
  PRIMARY KEY (detalle_preparacion_id));
CREATE TABLE item_compra (
  item_compra_id    int(10) NOT NULL AUTO_INCREMENT, 
  cantidad_comprada float NOT NULL, 
  numero_item       int(10) NOT NULL, 
  compra_id         int(10) NOT NULL, 
  PRIMARY KEY (item_compra_id));
CREATE TABLE item_inventario (
  numero_item            int(10) NOT NULL AUTO_INCREMENT, 
  descripcion            varchar(40) NOT NULL, 
  cantidad_en_existencia float NOT NULL, 
  valor_preorden         float NOT NULL, 
  PRIMARY KEY (numero_item));
CREATE TABLE item_venta (
  item_venta_id    int(10) NOT NULL AUTO_INCREMENT, 
  cantidad_vendida int(10) NOT NULL, 
  precio_unitario  float NOT NULL, 
  numero_venta     int(10) NOT NULL, 
  producto_id      int(10) NOT NULL, 
  PRIMARY KEY (item_venta_id));
CREATE TABLE producto (
  producto_id          int(10) NOT NULL AUTO_INCREMENT, 
  descripcion_producto varchar(50) NOT NULL, 
  preparacion_producto varchar(100) NOT NULL, 
  PRIMARY KEY (producto_id));
CREATE TABLE Proveedor (
  proveedor_id     int(10) NOT NULL AUTO_INCREMENT, 
  nombre_proveedor varchar(50) NOT NULL, 
  PRIMARY KEY (proveedor_id));
CREATE TABLE venta (
  numero_venta int(10) NOT NULL AUTO_INCREMENT, 
  fecha_venta  date NOT NULL, 
  cliente_id   int(10) NOT NULL, 
  PRIMARY KEY (numero_venta));
ALTER TABLE venta ADD CONSTRAINT FKventa418326 FOREIGN KEY (cliente_id) REFERENCES cliente (cliente_id);
ALTER TABLE item_venta ADD CONSTRAINT FKitem_venta23272 FOREIGN KEY (numero_venta) REFERENCES venta (numero_venta);
ALTER TABLE item_venta ADD CONSTRAINT FKitem_venta136244 FOREIGN KEY (producto_id) REFERENCES producto (producto_id);
ALTER TABLE detalle_preparacion_producto ADD CONSTRAINT FKdetalle_pr331370 FOREIGN KEY (producto_id) REFERENCES producto (producto_id);
ALTER TABLE detalle_preparacion_producto ADD CONSTRAINT FKdetalle_pr407852 FOREIGN KEY (numero_item) REFERENCES item_inventario (numero_item);
ALTER TABLE item_compra ADD CONSTRAINT FKitem_compr544612 FOREIGN KEY (numero_item) REFERENCES item_inventario (numero_item);
ALTER TABLE item_compra ADD CONSTRAINT FKitem_compr950223 FOREIGN KEY (compra_id) REFERENCES Compra (compra_id);
ALTER TABLE Compra ADD CONSTRAINT FKCompra969619 FOREIGN KEY (proveedor_id) REFERENCES Proveedor (proveedor_id);

