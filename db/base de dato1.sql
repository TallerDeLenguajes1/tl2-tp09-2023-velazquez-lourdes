--
-- Archivo generado con SQLiteStudio v3.4.4 el vi. nov. 3 19:22:36 2023
--
-- Codificación de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabla: tablero
CREATE TABLE IF NOT EXISTS tablero (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nombre TEXT NOT NULL, descripcion TEXT, id_usuario_propietario REFERENCES usuario (id) NOT NULL, id_usuario_asignado NUMERIC REFERENCES usuario (id));
INSERT INTO tablero (id, nombre, descripcion, id_usuario_propietario, id_usuario_asignado) VALUES (1, 'nombtre', '7', 1, 1);

-- Tabla: tarea
CREATE TABLE IF NOT EXISTS tarea (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, id_tablero NUMERIC REFERENCES tablero (id) NOT NULL, nombre TEXT NOT NULL, estado NUMERIC NOT NULL, color TEXT);
INSERT INTO tarea (id, id_tablero, nombre, estado, color) VALUES (1, 1, 'nombre1', 0, 'rojo');

-- Tabla: usuario
CREATE TABLE IF NOT EXISTS usuario (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, nombre_de_usuario TEXT NOT NULL);
INSERT INTO usuario (id, nombre_de_usuario) VALUES (1, 'usuario1');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
