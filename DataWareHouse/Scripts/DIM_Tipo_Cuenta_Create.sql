-- DataWareHouse.dbo.DIM_Tipo_Cuenta definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Tipo_Cuenta;

CREATE TABLE DataWareHouse.dbo.DIM_Tipo_Cuenta (
	ID_Tipo_Cuenta tinyint IDENTITY(1,1) NOT NULL,
	Tipo_Cuenta nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT Dim_Tipo_Cuenta_PK PRIMARY KEY (ID_Tipo_Cuenta)
);