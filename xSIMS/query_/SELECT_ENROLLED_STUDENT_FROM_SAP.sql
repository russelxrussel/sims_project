/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct U_studentno, u_docdate
FROM [SSI].[dbo].[@FT_ORCT]
where U_simsref <> '0' and U_simsref <> '' and U_pymtfor = 'UPON ENROLLMENT' and U_Year = '2016'
order by u_docdate
  