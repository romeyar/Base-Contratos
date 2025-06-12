-- DataWareHouse.dbo.DIM_Fecha_Inicio definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Fecha_Inicio;

CREATE TABLE DataWareHouse.dbo.DIM_Fecha_Inicio (
	Fecha_Inicio date NOT NULL,
	Dia tinyint NOT NULL,
	Mes tinyint NOT NULL,
	Annio int NOT NULL,
	CONSTRAINT Dim_Fecha_Inicio_PK PRIMARY KEY (Fecha_Inicio)
);