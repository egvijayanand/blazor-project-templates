# .NET 6 project templates

## Blazor desktop project templates for Windows Forms and WPF

| Version | App Model |
| :-----: | :-------: |
| [![NuGet Package](https://badgen.net/nuget/v/VijayAnand.BlazorTemplates/)](https://www.nuget.org/packages/VijayAnand.BlazorTemplates/) | [Unified Template](https://www.nuget.org/packages/VijayAnand.BlazorTemplates/)|
| [![NuGet Package](https://badgen.net/nuget/v/VijayAnand.WindowsForms.Blazor/)](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/) | [Windows Forms](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/)|
| [![NuGet Package](https://badgen.net/nuget/v/VijayAnand.Wpf.Blazor/)](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/) | [WPF](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/)|

Templates made available for working with **Blazor components in desktop applications such as Windows Forms and WPF**.

Also available as a single unified template package.

#### Commands to install the project template:

Unified Template:

```shell
dotnet new --install VijayAnand.BlazorTemplates
```

Can also be installed separately.

```shell
dotnet new --install VijayAnand.WindowsForms.Blazor
```

```shell
dotnet new --install VijayAnand.Wpf.Blazor
```

#### Project names referenced by these templates:

Windows Forms: **winforms-blazor**

WPF: **wpf-blazor**

So, .NET CLI command to create a new project from your favorite terminal would be as follows:

```shell
dotnet new winforms-blazor
```

```shell
dotnet new wpf-blazor
```

To run the project, it does depend on the WebView2 runtime, which can be downloaded from here:

This can also be installed with [Maui Check](https://github.com/Redth/dotnet-maui-check) tool

https://developer.microsoft.com/en-us/microsoft-edge/webview2/#download-section

### Templates within Visual Studio

After installing the CLI template, optionally, it can be made available in the New Project dialog within Visual Studio 2019 (16.8+) for an integrated experience.

Enable the option as shown in the below screenshot (Tools -> Options / Alt + T + O) and then restart the Visual Studio instance for this to take effect.

![CLI Project Templates within Visual Studio 2019](./images/cli-templates-option-enable.png)

> **Pro Tip:** Search with the **Blazor** keyword to quickly locate the project template in VS _Create Project_ dialog.
