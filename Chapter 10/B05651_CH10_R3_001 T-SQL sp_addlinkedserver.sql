EXEC sp_addlinkedserver 
   @server='local_SSAS',
   @srvproduct='', 
   @provider='MSOLAP',
   @datasrc='.',
   @catalog='Adventure Works DW 2016'
