:: Creates a new NuGet package from the project file
@echo off

:: Package Name

if not exist PackageName.txt (call Error "Package name file not available." & goto end)

set /P packageName=<PackageName.txt

if [%packageName%]==[] (call Error "Package name not configured." & goto end)

:: Package Version

if not exist PackageVersion.txt (call Error "Version file not available." & goto end)

set /P packageVersion=<PackageVersion.txt

if [%packageVersion%]==[] (call Error "Version # not configured." & goto end)

@echo Version #: %packageVersion%

if exist .\bin\Release\%packageName%.%packageVersion%.nupkg del .\bin\Release\%packageName%.%packageVersion%.nupkg

call Info "Creating NuGet package in release mode ..."

dotnet pack .\VijayAnand.BlazorTemplates.csproj -c Release -p:PackageVersion=%packageVersion%

if %errorlevel% == 0 (call Success "Process completed.") else (call Error "Create package failed.")

:end
pause