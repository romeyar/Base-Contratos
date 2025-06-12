-- DataWareHouse.dbo.DIM_Supervisores definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Supervisores;

CREATE TABLE DataWareHouse.dbo.DIM_Supervisores (
	ID_Supervisor tinyint IDENTITY(1,1) NOT NULL,
	NOMBRE_SUPERVISOR nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT Dim_Supervisores_PK PRIMARY KEY (ID_Supervisor)
);