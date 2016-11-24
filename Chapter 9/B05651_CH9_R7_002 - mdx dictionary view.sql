USE [AdventureWorksDW2016]
GO


CREATE VIEW [dbo].[vMDXDictionary]
AS

SELECT * FROM OPENQUERY(MetadataExcel,
	'
	SELECT [Token]
		  ,[MDX_Expression]
		  ,[Type]
		  ,[Description]
	  FROM [MDX_Dictionary$]
	'
	)



GO


