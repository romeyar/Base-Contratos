-- DataWareHouse.dbo.DIM_Tipo_Gasto definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Tipo_Gasto;

CREATE TABLE DataWareHouse.dbo.DIM_Tipo_Gasto (
	ID_Tipo_Gasto tinyint IDENTITY(1,1) NOT NULL,
	Tipo_Gasto nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT Dim_Tipo_Gasto_PK PRIMARY KEY (ID_Tipo_Gasto)
);