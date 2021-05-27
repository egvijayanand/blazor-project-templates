:: Creates a new NuGet package from the project file
::nuget.exe pack VijayAnand.WindowsForms.Blazor.nuspec
@echo off
echo Creating project template ...
dotnet pack .\VijayAnand.WindowsForms.Blazor.csproj
echo Process completed.
pause