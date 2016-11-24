Select * From OpenQuery(local_SSAS,
'
SELECT *
FROM
   $system.mdschema_DIMENSIONS
WHERE
   [CATALOG_NAME] = ''Adventure Works DW 2016''
   AND LEFT(CUBE_NAME, 1) <> ''$'' -- avoid dimension cubes
   AND DIMENSION_IS_VISIBLE -- avoid hidden dimensions
   AND DIMENSION_TYPE <> 2 -- avoid measures
')
