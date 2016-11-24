EXEC sp_addlinkedserver
    @server = 'MetadataExcel',
    @srvproduct = 'Excel',
    @provider = 'Microsoft.ACE.OLEDB.12.0',
    @datasrc = 'C:\Test\Metadata.xlsx',
    @provstr = 'Excel 12.0;IMEX=1;HDR=YES;'
