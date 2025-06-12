-- DataWareHouse.dbo.DIM_Contratistas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Contratistas;

CREATE TABLE DataWareHouse.dbo.DIM_Contratistas (
	ID_CONTRATISTA int NOT NULL,
	NOM_CONTRATISTA nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CORREO_ELECTRONICO nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PROFESION nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NUMERO_CUENTA nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ID_Genero tinyint NOT NULL,
	ID_Banco tinyint NOT NULL,
	ID_IVA tinyint NOT NULL,
	ID_Tipo_Cuenta tinyint NOT NULL,
	FECHA_DE_NACIMIENTO date NOT NULL,
	CONSTRAINT Dim_Contratistas_PK PRIMARY KEY (ID_CONTRATISTA),
	CONSTRAINT DIM_Contratistas_DIM_FechaNacimiento_FK FOREIGN KEY (FECHA_DE_NACIMIENTO) REFERENCES DataWareHouse.dbo.DIM_FechaNacimiento(FECHA_DE_NACIMIENTO),
	CONSTRAINT Dim_Contratistas_DIM_Banco_FK FOREIGN KEY (ID_Banco) REFERENCES DataWareHouse.dbo.DIM_Banco(ID_Banco),
	CONSTRAINT Dim_Contratistas_DIM_Genero_FK FOREIGN KEY (ID_Genero) REFERENCES DataWareHouse.dbo.DIM_Genero(ID_Genero),
	CONSTRAINT Dim_Contratistas_DIM_IVA_FK FOREIGN KEY (ID_IVA) REFERENCES DataWareHouse.dbo.DIM_IVA(ID_IVA),
	CONSTRAINT Dim_Contratistas_Dim_Tipo_Cuenta_FK FOREIGN KEY (ID_Tipo_Cuenta) REFERENCES DataWareHouse.dbo.DIM_Tipo_Cuenta(ID_Tipo_Cuenta)
);