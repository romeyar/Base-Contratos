INSERT INTO DataWareHouse.dbo.DIM_Fecha_Terminacion
(Fecha_Terminacion,Dia,Mes,Annio)
SELECT DISTINCT Fecha_Terminacion AS Fecha_Terminacion
	,DAY(Fecha_Terminacion) AS Dia
	,MONTH(Fecha_Terminacion) AS Mes
	,YEAR (Fecha_Terminacion) AS Annio
FROM DL_Contratos.dbo.DL_Contratos 
WHERE Fecha_Terminacion IS NOT NULL 