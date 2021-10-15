:: Creates a new NuGet package from the project file
@echo off
if exist .\bin\Debug\VijayAnand.BlazorTemplates.1.0.2.nupkg del .\bin\Debug\VijayAnand.BlazorTemplates.1.0.2.nupkg

echo Creating item template . . .
dotnet pack .\VijayAnand.BlazorTemplates.csproj -p:PackageVersion=1.0.2
echo Process completed
pause