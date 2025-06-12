-- DataWareHouse.dbo.DIM_Fecha_Terminacion definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Fecha_Terminacion;

CREATE TABLE DataWareHouse.dbo.DIM_Fecha_Terminacion (
	Fecha_Terminacion date NOT NULL,
	Dia tinyint NOT NULL,
	Mes tinyint NOT NULL,
	Annio int NOT NULL,
	CONSTRAINT Fecha_Terminacion_PK PRIMARY KEY (Fecha_Terminacion)
);