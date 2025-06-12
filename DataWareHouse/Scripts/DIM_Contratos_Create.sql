-- DataWareHouse.dbo.DIM_Contratos definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Contratos;

CREATE TABLE DataWareHouse.dbo.DIM_Contratos (
	NUM_PROCESO nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NUM_CONTRATO nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	OBJETO_CONTRACTUAL nvarchar(700) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PRESUPUESTO nvarchar(12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NUM_CDP_1 int NOT NULL,
	NUM_CDP_2 int NULL,
	VALOR_CDP_1 int NOT NULL,
	VALOR_CDP_2 int NULL,
	VALOR_INICIAL int NOT NULL,
	HONORARIOS_MENSUALES int NOT NULL,
	VALOR_RP_1 int NOT NULL,
	VALOR_RP_2 int NULL,
	CONSTRAINT Dim_Contratos_PK PRIMARY KEY (NUM_CONTRATO)
);