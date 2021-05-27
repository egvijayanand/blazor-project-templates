# dotnet6-project-templates
.NET 6 project templates

Under the **src** directory, source for each project template is maintained in a separate directory.

Currently, templates made available for working with _**Blazor components in desktop applications such as Windows Forms and WPF**_.

Clone (or Download) the repository to the local machine and run the batch files available to create and install the project templates into your local machine.

Batch files are available within in each of the project directory (_Create-Template.bat_ and _Install-Template.bat_).

Under the hood, they make use of the .NET CLI commands and process the template specification file (\*.nuspec) to create the NuGet package.

Then, this NuGet package can be installed as Project template and made use of.

Project names referenced by these templates:

Windows Forms: **winforms-blazor**

WPF: **wpf-blazor**

So, .NET CLI command to create a new project from your favorite terminal would be as follows:

For WinForms: **dotnet new winforms-blazor**

For WPF: **dotnet new wpf-blazor**

To run the project, it does depend on the WebView2 runtime, which can be downloaded from here:

https://developer.microsoft.com/en-us/microsoft-edge/webview2/#download-section
