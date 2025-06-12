INSERT INTO DataWareHouse.dbo.DIM_Fecha_Inicio
(Fecha_Inicio,Dia,Mes,Annio)
SELECT DISTINCT FECHA_INICIO AS Fecha_Inicio
	,DAY(FECHA_INICIO) AS Dia
	,MONTH(FECHA_INICIO) AS Mes
	,YEAR (FECHA_INICIO) AS Annio
FROM DL_Contratos.dbo.DL_Contratos 
WHERE FECHA_INICIO IS NOT NULL 