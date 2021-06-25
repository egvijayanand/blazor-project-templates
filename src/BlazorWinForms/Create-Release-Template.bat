:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.WindowsForms.Blazor.nuspec
@echo off

@echo Deleting existing package
if exist .\bin\Release\VijayAnand.WindowsForms.Blazor.1.0.1.nupkg del .\bin\Release\VijayAnand.WindowsForms.Blazor.1.0.1.nupkg

echo Creating project template package . . .
dotnet pack .\VijayAnand.WindowsForms.Blazor.csproj -c Release -p:PackageVersion=1.0.1
echo Process completed.
pause