-- DataWareHouse.dbo.DIM_Tipo_Contrato definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Tipo_Contrato;

CREATE TABLE DataWareHouse.dbo.DIM_Tipo_Contrato (
	Cod_Tipo_Contrato int NOT NULL,
	TIPO_CONTRATO nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT Dim_Tipo_Contrato_PK PRIMARY KEY (Cod_Tipo_Contrato)
);