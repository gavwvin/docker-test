
Invoke-SqlCmd -InputFile Sql/CreateDatabase.sql
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\aspnet_regsql -S localhost -E -A all -d DockerTestDb

Invoke-SqlCmd -InputFile Sql/CreateDBLogin.sql

Invoke-SqlCmd -InputFile Sql/CreateTables.sql

Invoke-SqlCmd -InputFile Sql/LoadTables.sql

C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\aspnet_regsql -S localhost -E -d DockerTestDb -ed
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\aspnet_regsql -S localhost -E -d DockerTestDb -t Product -et

