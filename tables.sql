CREATE TABLE CLIENTE (
    IdCliente INTEGER PRIMARY KEY,
    Nombre TEXT,
    Correo TEXT,
    Direccion TEXT,
    RUT TEXT,
    Celular TEXT
);

CREATE TABLE EMPRESA (
    IdEmpresa INTEGER PRIMARY KEY,
    NombreEmpresa TEXT
);

CREATE TABLE MARCA (
    IdMarca INTEGER PRIMARY KEY,
    NombreMarca TEXT,
    IdEmpresa INTEGER,
    FOREIGN KEY (IdEmpresa) REFERENCES EMPRESA(IdEmpresa)
);

CREATE TABLE TIPOVEHICULO (
    IdTipo INTEGER PRIMARY KEY,
    Tipo TEXT
);

CREATE TABLE VEHICULO (
    Patente TEXT PRIMARY KEY,
    IdMarca INTEGER,
    IdTipo INTEGER,
    Modelo TEXT,
    Color TEXT,
    PrecioVenta REAL,
    FOREIGN KEY (IdMarca) REFERENCES MARCA(IdMarca),
    FOREIGN KEY (IdTipo) REFERENCES TIPOVEHICULO(IdTipo)
);

CREATE TABLE VENTA (
    IdVenta INTEGER PRIMARY KEY,
    Fecha TEXT,
    IdCliente INTEGER,
    Patente TEXT,
    FOREIGN KEY (IdCliente) REFERENCES CLIENTE(IdCliente),
    FOREIGN KEY (Patente) REFERENCES VEHICULO(Patente)
);

CREATE TABLE MANTENCION (
    IdMantencion INTEGER PRIMARY KEY,
    Fecha TEXT,
    Kms INTEGER,
    IdCliente INTEGER,
    Patente TEXT,
    FOREIGN KEY (IdCliente) REFERENCES CLIENTE(IdCliente),
    FOREIGN KEY (Patente) REFERENCES VEHICULO(Patente)
);
