USE [master]
IF  EXISTS (SELECT * FROM master.dbo.syslogins WHERE name = N'dockertestdb')
EXEC master.dbo.sp_droplogin @loginame = N'dockertestdb'