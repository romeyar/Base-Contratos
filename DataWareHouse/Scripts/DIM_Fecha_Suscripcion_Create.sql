-- DataWareHouse.dbo.DIM_Fecha_Suscripcion definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Fecha_Suscripcion;

CREATE TABLE DataWareHouse.dbo.DIM_Fecha_Suscripcion (
	Fecha_Suscripcion date NOT NULL,
	Dia tinyint NOT NULL,
	Mes tinyint NOT NULL,
	Annio int NOT NULL,
	CONSTRAINT Dim_Fecha_Suscripcion_PK PRIMARY KEY (Fecha_Suscripcion)
);