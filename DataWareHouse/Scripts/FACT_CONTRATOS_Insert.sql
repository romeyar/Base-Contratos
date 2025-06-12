INSERT INTO DataWareHouse.dbo.FACT_CONTRATOS
(NUM_CONTRATO,ID_Tipo_Gasto,Cod_Tipo_Contrato,Fecha_Suscripcion,Fecha_Inicio,Fecha_Terminacion,ID_Supervisor,ID_AREAS)
SELECT NUM_CONTRATO AS NUM_CONTRATO
		,(SELECT ID_Tipo_Gasto FROM DataWareHouse.dbo.DIM_Tipo_Gasto WHERE Tipo_Gasto = H.TIPO_GASTO) AS ID_Tipo_Gasto
		,(SELECT Cod_Tipo_Contrato FROM DataWareHouse.dbo.DIM_Tipo_Contrato WHERE TIPO_CONTRATO = H.TIPO_CONTRATO) AS Cod_Tipo_Contrato
		,Fecha_Suscripcion AS FECHA_SUSCRIPCION
		,Fecha_Inicio AS FECHA_INICIO
		,Fecha_Terminacion AS FECHA_TERMINACION
		,(SELECT ID_Supervisor FROM DataWareHouse.dbo.DIM_Supervisores WHERE NOMBRE_SUPERVISOR = H.NOMBRE_SUPERVISOR) AS ID_Supervisor
		,(SELECT ID_AREAS FROM DataWareHouse.dbo.DIM_Areas WHERE GERENCIA_AREA = H.GERENCIA_AREA) AS ID_AREAS
FROM DL_Contratos.dbo.DL_Contratos AS H