# .NET 6 project templates

## Blazor desktop project templates for Windows Forms and WPF

Under the **src** directory, source for each project template is maintained in a separate directory.

Currently, templates made available for working with _**Blazor components in desktop applications such as Windows Forms and WPF**_.

Clone (or Download) the repository to the local machine and run the batch files available to create and install the project templates into your local machine.

Batch files are available within in each of the project directory (_Create-Template.bat_ and _Install-Template.bat_).

Under the hood, they make use of the .NET CLI commands and processes the specification to create the NuGet package.

Then, this NuGet package can be installed as Project template and made use of.

Project names referenced by these templates:

Windows Forms: **winforms-blazor**

WPF: **wpf-blazor**

So, .NET CLI command to create a new project from your favorite terminal would be as follows:

For WinForms:
```console
dotnet new winforms-blazor
```

For WPF:
```console
dotnet new wpf-blazor
```

To run the project, it does depend on the WebView2 runtime, which can be downloaded from here:

https://developer.microsoft.com/en-us/microsoft-edge/webview2/#download-section

### Templates within Visual Studio

After installing the CLI template, optionally, it can be made available in the New Project dialog within Visual Studio 2019 (16.8+) for an integrated experience.

Enable the option as shown in the below screenshot (Tools -> Options / Alt + T + O) and then restart the Visual Studio instance for this to take effect.

![CLI Project Templates within Visual Studio 2019](https://github.com/egvijayanand/dotnet6-project-templates/blob/main/images/cli-templates-option-enable.png)

> Pro Tip: Search with the **Blazor** keyword to quickly locate the project template in VS.
