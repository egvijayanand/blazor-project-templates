:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.WindowsForms.Blazor.nuspec
@echo off

if not exist PackageVersion.txt (echo Version file not available && goto end)

set /P packageVersion=<PackageVersion.txt

if "%packageVersion%"=="" (echo Version # not configured && goto end)

echo Version #: %packageVersion%

echo Deleting existing package
if exist .\bin\Release\VijayAnand.WindowsForms.Blazor.%packageVersion%.nupkg del .\bin\Release\VijayAnand.WindowsForms.Blazor.%packageVersion%.nupkg

echo Creating NuGet package . . .
dotnet pack .\VijayAnand.WindowsForms.Blazor.csproj -c Release -p:PackageVersion=%packageVersion%
echo Process completed

:end
pause