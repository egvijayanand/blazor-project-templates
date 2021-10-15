:: Installs the NuGet package
@echo off
echo Installing the templates . . .
dotnet new --install .\bin\Release\VijayAnand.BlazorTemplates.1.0.2.nupkg
echo Process completed
pause