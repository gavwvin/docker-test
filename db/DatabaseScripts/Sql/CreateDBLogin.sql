USE [DockerTestDb]

if not exists (select * from master.dbo.syslogins where loginname = N'dockertestdb')
BEGIN
	exec sp_addlogin 'dockertestdb' ,'pass@word1', 'DockerTestDb'
END

exec sp_grantdbaccess 'dockertestdb'

exec sp_addrolemember 'db_owner', 'dockertestdb'