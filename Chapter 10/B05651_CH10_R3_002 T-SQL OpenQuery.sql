Select * From OpenQuery(local_SSAS,
'
SELECT
   NON EMPTY
   { [Measures].[Sales Amount],
     [Measures].[Gross Profit Margin] } *
   { [Product].[Category].MEMBERS } ON 0,
   NON EMPTY
   { [Product].[Color].MEMBERS } ON 1
FROM
   [Adventure Works]
WHERE
   ( [Date].[Calendar].[Calendar Year].&[2014] )
')
