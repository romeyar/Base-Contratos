-- DataWareHouse.dbo.FACT_CONTRATOS definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.FACT_CONTRATOS;

CREATE TABLE DataWareHouse.dbo.FACT_CONTRATOS (
	NUM_CONTRATO nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ID_Tipo_Gasto tinyint NOT NULL,
	Cod_Tipo_Contrato int NOT NULL,
	Fecha_Suscripcion date NOT NULL,
	Fecha_Inicio date NOT NULL,
	Fecha_Terminacion date NOT NULL,
	ID_Supervisor tinyint NOT NULL,
	ID_AREAS tinyint NOT NULL,
	CONSTRAINT FACT_CONTRATOS_DIM_Areas_FK FOREIGN KEY (ID_AREAS) REFERENCES DataWareHouse.dbo.DIM_Areas(ID_AREAS),
	CONSTRAINT FACT_CONTRATOS_DIM_Contratos_FK FOREIGN KEY (NUM_CONTRATO) REFERENCES DataWareHouse.dbo.DIM_Contratos(NUM_CONTRATO),
	CONSTRAINT FACT_CONTRATOS_DIM_Fecha_Inicio_FK FOREIGN KEY (Fecha_Inicio) REFERENCES DataWareHouse.dbo.DIM_Fecha_Inicio(Fecha_Inicio),
	CONSTRAINT FACT_CONTRATOS_DIM_Fecha_Suscripcion_FK FOREIGN KEY (Fecha_Suscripcion) REFERENCES DataWareHouse.dbo.DIM_Fecha_Suscripcion(Fecha_Suscripcion),
	CONSTRAINT FACT_CONTRATOS_DIM_Fecha_Terminacion_FK FOREIGN KEY (Fecha_Terminacion) REFERENCES DataWareHouse.dbo.DIM_Fecha_Terminacion(Fecha_Terminacion),
	CONSTRAINT FACT_CONTRATOS_DIM_Supervisores_FK FOREIGN KEY (ID_Supervisor) REFERENCES DataWareHouse.dbo.DIM_Supervisores(ID_Supervisor),
	CONSTRAINT FACT_CONTRATOS_DIM_Tipo_Contrato_FK FOREIGN KEY (Cod_Tipo_Contrato) REFERENCES DataWareHouse.dbo.DIM_Tipo_Contrato(Cod_Tipo_Contrato),
	CONSTRAINT FACT_CONTRATOS_DIM_Tipo_Gasto_FK FOREIGN KEY (ID_Tipo_Gasto) REFERENCES DataWareHouse.dbo.DIM_Tipo_Gasto(ID_Tipo_Gasto)
);