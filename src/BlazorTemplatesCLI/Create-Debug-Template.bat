:: Creates a new NuGet package from the project file
@echo off

if not exist PackageVersion.txt (echo Version file not available && goto end)

set /P packageVersion=<PackageVersion.txt

if "%packageVersion%"=="" (echo Version # not configured && goto end)

@echo Version #: %packageVersion%

if exist .\bin\Debug\VijayAnand.BlazorTemplates.%packageVersion%.nupkg del .\bin\Debug\VijayAnand.BlazorTemplates.%packageVersion%.nupkg

echo Creating NuGet package . . .
dotnet pack .\VijayAnand.BlazorTemplates.csproj -c Debug -p:PackageVersion=%packageVersion%
echo Process completed

:end
pause