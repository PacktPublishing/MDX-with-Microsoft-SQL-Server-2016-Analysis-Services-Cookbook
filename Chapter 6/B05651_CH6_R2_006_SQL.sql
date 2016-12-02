IF @Reporting_Level = 'Month'
	SELECT	
		DISTINCT '[Date].[Calendar].[Month].&[' 
			+ CAST([CalendarYear] AS CHAR(4)) + ']&[' 
			+ CAST([MonthNumberOfYear] AS VARCHAR(2)) + ']' AS ParameterValue
	,	[EnglishMonthName] + Space(1) + CAST([CalendarYear] AS CHAR(4)) AS  ParameterCaption
	FROM
		[dbo].[DimDate]
	WHERE
		[FullDateAlternateKey] <= GetDate()
	ORDER BY 1 DESC
