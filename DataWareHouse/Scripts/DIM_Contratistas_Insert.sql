INSERT INTO DataWareHouse.dbo.DIM_Contratistas
(ID_CONTRATISTA,NOM_CONTRATISTA,CORREO_ELECTRONICO,PROFESION,NUMERO_CUENTA,ID_Genero,ID_Banco,ID_IVA,ID_Tipo_Cuenta,FechaNacimiento)
SELECT ID_CONTRATISTA
		,NOM_CONTRATISTA
		,CORREO_ELECTRONICO
		,PROFESION
		,NUMERO_DE_CUENTA
		,(SELECT ID_Genero FROM DataWareHouse.dbo.DIM_Genero WHERE GENERO = H.GENERO) AS ID_Genero
		,(SELECT ID_Banco FROM DataWareHouse.dbo.DIM_Banco WHERE BANCO = H.NOM_BANCO) AS ID_Banco
		,(SELECT ID_IVA FROM DataWareHouse.dbo.DIM_IVA WHERE IVA_SI_NO = H.HONORARIOS_INCLUYEN_IVA) AS ID_IVA
		,(SELECT ID_Tipo_Cuenta FROM DataWareHouse.dbo.DIM_Tipo_Cuenta WHERE Tipo_Cuenta = H.TIPO_DE_CUENTA) AS ID_Tipo_Cuenta
		,(SELECT FechaNacimiento FROM DataWareHouse.dbo.DIM_FechaNacimiento WHERE FechaNacimiento = H.FECHA_DE_NACIMIENTO) AS FechaNacimiento
FROM DL_Contratos.dbo.DL_Contratistas AS H 
		
