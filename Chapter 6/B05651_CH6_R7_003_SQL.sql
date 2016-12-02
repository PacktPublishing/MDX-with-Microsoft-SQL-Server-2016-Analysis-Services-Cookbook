
SELECT DISTINCT 
	CAST(  
           CONVERT( CHAR(2), MonthNumberOfYear) 
           + '/ ' +  '1/' +
           CONVERT(CHAR(4), CalendarYear) AS DATE
         ) AS MonthNameValue
  FROM [AdventureWorksDW2016].[dbo].[DimDate]
  ORDER BY 
	CAST(  
           CONVERT( CHAR(2), MonthNumberOfYear) 
           + '/ ' +  '1/' +
           CONVERT(CHAR(4), CalendarYear) AS DATE
         ) DESC
