### Blazor desktop project template

A project template for hosting the Blazor component in the Windows Forms and WPF desktop application.

To install the template package:

```shell
dotnet new install VijayAnand.BlazorTemplates
```

To update the template package:

```shell
dotnet new update --check-only
```
```shell
dotnet new update
```

To make use of the template:

By default, this creates a solution that targets `.NET 9`.

For WinForms:

```shell
dotnet new winforms-blazor
```

For WPF:

```shell
dotnet new wpf-blazor
```

To target `.NET 8` Stable / `.NET 10` Preview, pass the explicit value (`net8.0` / `net10.0`) to the framework (`--framework` | `-f`) parameter, examples shown below.

.NET 8:

```shell
dotnet new winforms-blazor -f net8.0
```

```shell
dotnet new wpf-blazor -f net8.0
```

.NET 10 Preview:

```shell
dotnet new winforms-blazor -f net10.0
```

```shell
dotnet new wpf-blazor -f net10.0
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

Optionally, to make use of NuGet Central Package Management (CPM) feature, pass the below parameter while creating the project (_Supported from v3.5.0 onwards_):

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

Both of these templates require a parameter:

* `-n` | `--name` - The Name of the Item to create

<!--
* `-na` | `--namespace` - The Namespace for the Item to create
-->

Note:

*Make sure the project dependencies are restored before creating a new item from these templates.*

<!--
*While working with .NET 7 or higher SDK, the namespace parameter in short notation needs to be passed as `-p:na` (i.e., it needs to be prefixed with `-p:`).*
-->

```shell
dotnet new winforms-bwv -n MyForm
```

```shell
dotnet new wpf-bwv -n MyWindow
```

To uninstall the template package:

```shell
dotnet new uninstall VijayAnand.BlazorTemplates
```
