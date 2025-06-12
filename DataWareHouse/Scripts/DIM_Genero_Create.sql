-- DataWareHouse.dbo.DIM_Genero definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Genero;

CREATE TABLE DataWareHouse.dbo.DIM_Genero (
	ID_Genero tinyint IDENTITY(1,1) NOT NULL,
	GENERO nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Genero_PK PRIMARY KEY (ID_Genero)
);