INSERT INTO DataWareHouse.dbo.DIM_Tipo_Cuenta
(Tipo_Cuenta)
SELECT DISTINCT TIPO_DE_CUENTA
FROM DL_Contratos.dbo.DL_Contratistas