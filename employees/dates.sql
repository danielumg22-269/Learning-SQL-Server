-- UTC

-- ALTA PRECISION
SELECT SYSDATETIME() AS 'SYSDATETIME'; -- Horario del sistema
SELECT SYSDATETIMEOFFSET() AS 'SYSDATETIMEOFFSET';
SELECT  SYSUTCDATETIME() AS 'SYSUTCDATETIME';

--BAJA PRECISION
SELECT GETDATE() AS 'GETDATE';
SELECT CURRENT_TIMESTAMP AS 'CURRENT_TIMESTAMP';
--SELECT CURRENT_TRANSACTION_ID();
SELECT GETUTCDATE() AS 'GETUTCDATE';

--OBTENER SOLO EL PARTES DEL MES
-------------------------------------------------
--OBTENER SOLO EL A�O DE UNA FECHA
SELECT DATEPART(YEAR,'2002-10-08'); --EJEMPLO #1
SELECT DATEPART(YEAR, GETDATE()); --EJEMPLO #2

--OBTENER SOLO EL MES DE UNA FECHA
SELECT DATEPART(MONTH, '2002-10-08'); --SELECCIONE EL MES DE MI CUMPLEA�OS
SELECT DATEPART(MONTH, GETDATE()); --SELECCIONAR EL MES ACTUAL

--OBTENER A EMPLEADOS QUE SU A�O DE NACIMIENTO SEA DEL A�O 2000 EN ADELANTE

SELECT 
	CONCAT
	(
		DATEPART(DAY, [e].[employee_birthday]),
		'/',
		DATEPART(MONTH, [e].[employee_birthday]),
		'/',
		DATEPART(YEAR, [e].[employee_birthday])
	) AS fecha, *
FROM [dbo].[employees] AS [e]
WHERE [e].[employee_birthday] >= '2000-10-08';