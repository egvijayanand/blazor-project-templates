:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.WindowsForms.Blazor.nuspec
@echo off

@echo Deleting existing package
if exist .\bin\Debug\VijayAnand.WindowsForms.Blazor.1.0.2.nupkg del .\bin\Debug\VijayAnand.WindowsForms.Blazor.1.0.2.nupkg

echo Creating project template ...
dotnet pack .\VijayAnand.WindowsForms.Blazor.csproj -p:PackageVersion=1.0.2
echo Process completed.
pause