:: Installs the NuGet package
@echo off

:: Package Name

if not exist PackageName.txt (call Error "Package name file not available." & goto end)

set /P packageName=<PackageName.txt

if [%packageName%]==[] (call Error "Package name not configured." & goto end)

:: Package Version

if not exist PackageVersion.txt (call Error "Version file not available." & goto end)

set /P packageVersion=<PackageVersion.txt

if [%packageVersion%]==[] (call Error "Version # not configured." & goto end)

:: Validate the Package

call Info "Validating %packageName% ver. %packageVersion% ..."

templates analyze -p .\bin\Release\%packageName%.%packageVersion%.nupkg

echo.
if %errorlevel% == 0 (call Info "Package validated.") else (call Error "Package validation failed." & goto end)

:: Install the package

echo.
call Info "Installing the %packageName% release template ver. %packageVersion% ..."

dotnet new install .\bin\Release\%packageName%.%packageVersion%.nupkg

if %errorlevel% == 0 (call Success "Process completed.") else (call Error "Install package failed.")

:end
pause