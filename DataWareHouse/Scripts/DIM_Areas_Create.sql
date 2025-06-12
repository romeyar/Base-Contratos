-- DataWareHouse.dbo.DIM_Areas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Areas;

CREATE TABLE DataWareHouse.dbo.DIM_Areas (
	ID_AREAS tinyint IDENTITY(1,1) NOT NULL,
	GERENCIA_AREA nvarchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_AREAS_PK PRIMARY KEY (ID_AREAS)
);