Select * From OpenRowset('MSOLAP',
  'Data Source=.;Initial Catalog=Adventure Works DW 2016;',
  'SELECT [Measures].DefaultMember ON 0
   FROM [Adventure Works]')
