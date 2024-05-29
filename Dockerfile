# builder
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 AS builder

WORKDIR /src/Docker-Test
COPY src/Docker-Test/Docker-Test.sln .
COPY src/Docker-Test/Docker-Test/Docker-Test.csproj ./Docker-Test/
COPY src/Docker-Test/Docker-Test/packages.config ./Docker-Test/
RUN nuget restore Docker-Test.sln -PackagesDirectory packages

COPY src /src
RUN msbuild Docker-Test/Docker-Test.csproj /p:Configuration=Debug /p:OutputPath=c:/out

# app
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

ENV APP_ROOT=C:\\inetpub\\wwwroot

COPY --from=builder /out/_PublishedWebsites/Docker-Test ${APP_ROOT} 
#COPY --from=builder /src/Docker-Test/packages/Microsoft.Data.SqlClient.SNI.2.1.1/build/net46/Microsoft.Data.SqlClient.SNI.x64.dll ${APP_ROOT}/bin

#COPY config/appsettings.json ${APP_ROOT}
#COPY config/logging.json ${APP_ROOT}/config/
#COPY config/connectionstrings.json ${APP_ROOT}/config/