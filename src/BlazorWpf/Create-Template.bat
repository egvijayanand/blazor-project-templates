:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.Wpf.Blazor.nuspec
@echo off
echo Creating project template ...
dotnet pack .\VijayAnand.Wpf.Blazor.csproj
echo Process completed.
pause