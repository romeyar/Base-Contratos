-- DL_Contratos.dbo.DL_Contratistas definition

-- Drop table

-- DROP TABLE DL_Contratos.dbo.DL_Contratistas;

CREATE TABLE DL_Contratos.dbo.DL_Contratistas (
	ID_CONTRATISTA int NULL,
	NOM_CONTRATISTA nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GENERO nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FECHA_DE_NACIMIENTO date NULL,
	CORREO_ELECTRONICO nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PROFESION nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HONORARIOS_INCLUYEN_IVA nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TIPO_DE_CUENTA nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NUMERO_DE_CUENTA nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BANCO nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);