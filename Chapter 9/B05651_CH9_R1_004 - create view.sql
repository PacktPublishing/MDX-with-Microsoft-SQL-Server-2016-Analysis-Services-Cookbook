USE [AdventureworksDW2016]
GO

CREATE VIEW dbo.vReportItems
AS
SELECT * FROM OPENQUERY(MetadataExcel,
	'
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
		,[Formula_MDX]
		,[Formula_User_Friendly]
		,[Formula_Description]
		,[Is_Growth_Positive]
		,[Status_Low]
		,[Status_High]
		,[Detailed_Report_URL]
    FROM [Report_Items$]
	'
	)
GO
