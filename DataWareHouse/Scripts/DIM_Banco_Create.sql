-- DataWareHouse.dbo.DIM_Banco definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Banco;

CREATE TABLE DataWareHouse.dbo.DIM_Banco (
	ID_Banco tinyint IDENTITY(1,1) NOT NULL,
	BANCO nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Banco_PK PRIMARY KEY (ID_Banco)
);