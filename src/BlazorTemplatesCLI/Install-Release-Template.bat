:: Installs the NuGet package
@echo off

if not exist PackageVersion.txt (echo Version file not available && goto end)

set /P packageVersion=<PackageVersion.txt

if "%packageVersion%"=="" (echo Version # not configured && goto end)

echo Installing the template ver. %packageVersion% . . .
dotnet new --install .\bin\Release\VijayAnand.BlazorTemplates.%packageVersion%.nupkg
echo Process completed

:end
pause