:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.Wpf.Blazor.nuspec
@echo off

@echo Deleting existing package
if exist .\bin\Release\VijayAnand.Wpf.Blazor.1.0.4.nupkg del .\bin\Release\VijayAnand.Wpf.Blazor.1.0.4.nupkg

echo Creating project template ...
dotnet pack .\VijayAnand.Wpf.Blazor.csproj -c Release -p:PackageVersion=1.0.4
echo Process completed.
pause