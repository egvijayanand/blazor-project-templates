:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.Wpf.Blazor.nuspec
@echo off

@echo Deleting existing package
if exist .\bin\Release\VijayAnand.Wpf.Blazor.1.0.1.nupkg del .\bin\Release\VijayAnand.Wpf.Blazor.1.0.1.nupkg

echo Creating project template ...
dotnet pack .\VijayAnand.Wpf.Blazor.csproj -c Release
echo Process completed.
pause