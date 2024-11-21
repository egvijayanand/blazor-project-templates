A project template for hosting the Blazor component in the WPF desktop application.

To install the template:

```shell
dotnet new install VijayAnand.Wpf.Blazor
```

To make use of the template:

By default, this creates a solution that targets `.NET 9`.

```shell
dotnet new wpf-blazor
```

To target `.NET 8`, pass the explicit value (`net8.0`) to the framework (`--framework` | `-f`) parameter, example shown below.

```shell
dotnet new wpf-blazor -f net8.0
```

Optionally, to abstract Razor components as a separate Razor Class Library (RCL), pass the below parameter while creating the project:

`-rcl` | `--razor-class-library` - Default value is `false`

```shell
dotnet new wpf-blazor -rcl
```

Optionally, to make use of NuGet Central Package Management (CPM) feature, pass the below parameter while creating the project (_Supported from v3.5.0 onwards_):

`-cpm` | `--central-pkg-mgmt` - Default value is `false`

```shell
dotnet new wpf-blazor -cpm
```

Has support for Item Template too:

* WPF Window with BlazorWebView
  - Named as `wpf-bwv`

It requires a parameter:

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
dotnet new wpf-bwv -n MyWindow
```
