USE [master]
GO
sp_configure 'Show Advanced Options', 1
GO
RECONFIGURE WITH OverRide
GO
sp_configure 'Ad Hoc Distributed Queries', 1
GO
RECONFIGURE WITH OverRide
GO
EXEC master.dbo.sp_MSset_oledb_prop
  'MSOLAP',
  'AllowInProcess', 1
GO
EXEC master.dbo.sp_MSset_oledb_prop
     'MSOLAP',
  'DynamicParameters', 1
GO
