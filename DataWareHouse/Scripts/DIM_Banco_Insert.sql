INSERT INTO DataWareHouse.dbo.DIM_Banco
(BANCO)
SELECT DISTINCT NOM_BANCO
FROM DL_Contratos.dbo.DL_Contratistas