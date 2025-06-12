-- DataWareHouse.dbo.DIM_IVA definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_IVA;

CREATE TABLE DataWareHouse.dbo.DIM_IVA (
	ID_IVA tinyint IDENTITY(1,1) NOT NULL,
	IVA_SI_NO nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_IVA_PK PRIMARY KEY (ID_IVA)
);