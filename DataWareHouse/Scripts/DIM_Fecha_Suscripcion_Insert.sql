INSERT INTO DataWareHouse.dbo.DIM_Fecha_Suscripcion
(Fecha_Suscripcion,Dia,Mes,Annio)
SELECT DISTINCT Fecha_Suscripcion AS Fecha_Suscripcion
	,DAY(Fecha_Suscripcion) AS Dia
	,MONTH(Fecha_Suscripcion) AS Mes
	,YEAR (Fecha_Suscripcion) AS Annio
FROM DL_Contratos.dbo.DL_Contratos 
WHERE Fecha_Suscripcion IS NOT NULL 