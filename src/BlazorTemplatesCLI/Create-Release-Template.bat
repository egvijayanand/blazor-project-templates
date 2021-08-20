:: Creates a new NuGet package from the project file
@echo off
if exist .\bin\Release\VijayAnand.BlazorTemplates.1.0.0.nupkg del .\bin\Release\VijayAnand.BlazorTemplates.1.0.0.nupkg

echo Creating NuGet package ...
dotnet pack .\VijayAnand.BlazorTemplates.csproj -c Release -p:PackageVersion=1.0.0
echo Process completed
pause