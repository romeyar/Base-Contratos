-- DataWareHouse.dbo.DIM_FechaNacimiento definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_FechaNacimiento;

CREATE TABLE DataWareHouse.dbo.DIM_FechaNacimiento (
	FechaNacimiento date NOT NULL,
	Dia tinyint NOT NULL,
	Mes tinyint NOT NULL,
	Annio int NOT NULL,
	CONSTRAINT DIM_FechaNacimiento_PK PRIMARY KEY (FechaNacimiento)
);