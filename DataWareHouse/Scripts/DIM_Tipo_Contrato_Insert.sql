INSERT INTO DataWareHouse.dbo.DIM_Tipo_Contrato
(Cod_Tipo_Contrato,TIPO_CONTRATO)
SELECT DISTINCT COD_TIPO_CONTRATO,TIPO_CONTRATO
FROM DL_Contratos.dbo.DL_Contratos 