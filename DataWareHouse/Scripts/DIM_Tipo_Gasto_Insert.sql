INSERT INTO DataWareHouse.dbo.DIM_Tipo_Gasto
(Tipo_Gasto)
SELECT DISTINCT TIPO_GASTO
FROM DL_Contratos.dbo.DL_Contratos 