USE [AdventureWorksDW2016]
GO




ALTER VIEW [dbo].[vReportItems]
AS
SELECT
     [ID]
	,[Name]
	,[Description]
	,[Sort_Order]
	,[Parent_ID]
	,[Reporting_Category]
	,[Level_of_Importance]
	,[Unary_Operator]
	,[Multiplication_Factor]
	,[Unit_of_Measure]
	,[Format_String]
	,[Calculation_Type]
	,[Formula_Flag]
	,[Formula_MDX]		AS [Formula_MDX_Original]
	,CASE
	   WHEN [Formula_MDX] <> '' THEN [Formula_MDX]
	   ELSE [dbo].[TranslateToMDX]( [Formula_User_Friendly] )
	 END				AS [Formula_MDX]
	,[Formula_User_Friendly]
	,[Formula_Description]
	,[Is_Growth_Positive]
	,CONVERT( FLOAT, [Status_Low] )  AS [Status_Low]
	,CONVERT( FLOAT, [Status_High] ) AS [Status_High]
	,[Detailed_Report_URL]
FROM
 OPENQUERY( MetadataExcel, 
	'
	SELECT [ID]
		  ,[Name]
		  ,[Description]
		  ,[Sort_Order]
		  ,[Parent_ID]
		  ,[Reporting_Category]
		  ,[Level_of_Importance]
		  ,[Unary_Operator]
		  ,[Multiplication_Factor]
		  ,[Unit_of_Measure]
		  ,[Format_String]
		  ,[Calculation_Type]
		  ,[Formula_Flag]
		  ,[Formula_MDX]
		  ,[Formula_User_Friendly]
		  ,[Formula_Description]
		  ,[Is_Growth_Positive]
		  ,[Treshold_Low]
		  ,[Threshold_High]
		  ,[Detailed_Report_URL]
	  FROM [Report_Items$]
	'
	)


GO


