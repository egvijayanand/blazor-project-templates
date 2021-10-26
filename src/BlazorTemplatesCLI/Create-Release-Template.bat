:: Creates a new NuGet package from the project file
@echo off

if not exist PackageVersion.txt (echo Version file not available && goto end)

set /P packageVersion=<PackageVersion.txt

if "%packageVersion%"=="" (echo Version # not configured && goto end)

@echo Version #: %packageVersion%

if exist .\bin\Release\VijayAnand.BlazorTemplates.%packageVersion%.nupkg del .\bin\Release\VijayAnand.BlazorTemplates.%packageVersion%.nupkg

echo Creating NuGet package ...
dotnet pack .\VijayAnand.BlazorTemplates.csproj -c Release -p:PackageVersion=%packageVersion%
echo Process completed

:end
pause