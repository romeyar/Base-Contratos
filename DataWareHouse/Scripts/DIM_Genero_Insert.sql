INSERT INTO DataWareHouse.dbo.DIM_Genero
(GENERO)
SELECT DISTINCT GENERO
FROM DL_Contratos.dbo.DL_Contratistas