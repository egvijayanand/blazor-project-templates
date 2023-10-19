## Blazor Desktop Project Templates

### Blazor desktop project templates for Windows Forms and WPF

|App Model|Stable Channel|Preview Channel|
|:---:|:---:|:---:|
|[Unified Package](https://www.nuget.org/packages/VijayAnand.BlazorTemplates/)|[![Blazor NuGet Stable Package](https://badgen.net/nuget/v/VijayAnand.BlazorTemplates/?icon=nuget)](https://www.nuget.org/packages/VijayAnand.BlazorTemplates/)<br />[![Blazor Desktop Templates - VS Marketplace](https://badgen.net/vs-marketplace/v/egvijayanand.blazor-desktop-templates?icon=visualstudio)](https://marketplace.visualstudio.com/items?itemName=egvijayanand.blazor-desktop-templates)|[![Blazor NuGet Preview Package](https://badgen.net/nuget/v/VijayAnand.BlazorTemplates/pre?icon=nuget)](https://www.nuget.org/packages/VijayAnand.BlazorTemplates/absoluteLatest)|
|[Windows Forms](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/)|[![WinForms Blazor Stable Package](https://badgen.net/nuget/v/VijayAnand.WindowsForms.Blazor/?icon=nuget)](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/)|[![WinForms Blazor Preview Package](https://badgen.net/nuget/v/VijayAnand.WindowsForms.Blazor/pre?icon=nuget)](https://www.nuget.org/packages/VijayAnand.WindowsForms.Blazor/absoluteLatest)|
|[WPF](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/)|[![WPF Blazor Stable Package](https://badgen.net/nuget/v/VijayAnand.Wpf.Blazor/?icon=nuget)](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/)|[![WPF Blazor Preview Package](https://badgen.net/nuget/v/VijayAnand.Wpf.Blazor/pre?icon=nuget)](https://www.nuget.org/packages/VijayAnand.Wpf.Blazor/absoluteLatest)|

Templates made available for working with **Blazor components in desktop applications such as Windows Forms and WPF**.

Also available in an unified template package.

Join me on [**Developer Thoughts**](https://egvijayanand.in/), an exclusive blog for .NET MAUI and Blazor, for articles on working with these templates and much more.

Now published as Visual Studio 2022 Extension, can be downloaded from the [VS Marketplace](https://marketplace.visualstudio.com/items?itemName=egvijayanand.blazor-desktop-templates) and then installed with VSIX installer or even an easy way, install and manage directly from within Visual Studio IDE itself (Extensions -> Manage Extensions or `Alt + X + M` shortcut). To find this extension, search with the `blazorwebview` keyword. Refer to the below screenshot.

![Visual Studio – Manage Extensions (Blazor Desktop Templates in focus)](./images/vs-manage-extensions.png)

For CLI users, commands to install the project template:

Unified Template:

```shell
dotnet new install VijayAnand.BlazorTemplates
```

Can also be installed separately.

```shell
dotnet new install VijayAnand.WindowsForms.Blazor
```

```shell
dotnet new install VijayAnand.Wpf.Blazor
```

To update the template package:

```shell
dotnet new update --check-only
```
```shell
dotnet new update
```

#### Project names referenced by these templates:

Windows Forms: **winforms-blazor**

WPF: **wpf-blazor**

So, .NET CLI command to create a new project from your favorite terminal would be as follows:

By default, this creates a project that targets the Go-Live supported version, `.NET 8` as of now.

To create projects targeting different supported version of .NET, make use of the Framework parameter (`--framework` | `-f`) that takes `net6.0` / `net7.0` / `net8.0` as its options (with `net8.0` being the default value, if not specified).

WinForms:

```shell
dotnet new winforms-blazor -f net6.0
```

```shell
dotnet new winforms-blazor -f net7.0
```

Being the default value, framework parameter is optional for `.NET 8`.

```shell
dotnet new winforms-blazor -f net8.0
```

WPF:

```shell
dotnet new wpf-blazor -f net6.0
```

```shell
dotnet new wpf-blazor -f net7.0
```

Being the default value, framework parameter is optional for `.NET 8`.

```shell
dotnet new wpf-blazor -f net8.0
```

Optionally, to abstract Razor components as a separate Razor Class Library (RCL), pass the below parameter while creating the project:

`-rcl` | `--razor-class-library` - Default value is `false`

For WinForms:

```shell
dotnet new winforms-blazor -rcl
```

For WPF:

```shell
dotnet new wpf-blazor -rcl
```

Optionally, to make use of NuGet Central Package Management feature, pass the below parameter while creating the project (_Supported from v3.5.0-preview.1 onwards_):

`-cpm` | `--central-pkg-mgmt` - Default value is `false`

For WinForms:

```shell
dotnet new winforms-blazor -cpm
```

For WPF:

```shell
dotnet new wpf-blazor -cpm
```

Has support for Item Templates too:

* Windows Form with BlazorWebView
  - Named as `winforms-bwv`
* WPF Window with BlazorWebView
  - Named as `wpf-bwv`

Both of these templates takes two parameters:

* `-n` | `--name` - The Name of the Item to create
* `-na` | `--namespace` - The Namespace for the Item to create

Note:

*Ensure the project dependencies are restored before creating Item from these templates.*

*While working with .NET 7 or higher SDK, the namespace parameter in short notation needs to be passed as `-p:na` (i.e., it needs to be prefixed with `-p:`).*

```shell
dotnet new winforms-bwv -n MyForm -na BlazorApp
```

```shell
dotnet new wpf-bwv -n MyWindow -na BlazorApp
```

To uninstall the template package:

```shell
dotnet new uninstall VijayAnand.BlazorTemplates
```

To run the project, it does depend on the WebView2 runtime, which can be downloaded from here:

https://developer.microsoft.com/en-us/microsoft-edge/webview2/#download-section

Or can easily be installed with [Maui Check](https://github.com/Redth/dotnet-maui-check) tool.

#### Templates within Visual Studio

After installing the CLI template, optionally, this can be made available in the `New Project` dialog within Visual Studio for an integrated experience.

> **Pro Tip:** Search/Filter with the **Blazor** keyword to quickly locate these template in the VS _Create Project_ dialog.

![Blazor Desktop Project Templates within Visual Studio 2022](./images/blazor-desktop-templates.png)

<!--
Users on VS2019 (ver. 16.8+) need to enable the option as shown in the below screenshot (Tools -> Options / `Alt + T + O`) and then restart the Visual Studio instance for this to take effect.

_And in case of Visual Studio 2022, the option of listing the installed .NET CLI templates within IDE is enabled by default._

![CLI Project Templates within Visual Studio 2019](./images/cli-templates-option-enable.png)
-->
