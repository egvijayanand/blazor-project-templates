# .NET 6 project templates

## Blazor desktop project templates for Windows Forms and WPF

| Version | App Model |
| :-----: | :-------: |
|![NuGet](https://badgen.net/nuget/v/VijayAnand.WindowsForms.Blazor/)|[Windows Forms](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/)|
|![NuGet](https://badgen.net/nuget/v/VijayAnand.Wpf.Blazor/)|[WPF](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/)|

Under the **src** directory, source for each project template is maintained in a separate directory.

Currently, templates made available for working with _**Blazor components in desktop applications such as Windows Forms and WPF**_.

#### Commands to install the project template:

```console
dotnet new --install VijayAnand.WindowsForms.Blazor
```

```console
dotnet new --install VijayAnand.Wpf.Blazor
```

#### Project names referenced by these templates:

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

![CLI Project Templates within Visual Studio 2019](./images/cli-templates-option-enable.png)

> Pro Tip: Search with the **Blazor** keyword to quickly locate the project template in VS.
