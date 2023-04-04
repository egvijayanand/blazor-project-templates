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

By default, this creates a solution that targets the latest stable version, .NET 7 as of now.

For WinForms:

```shell
dotnet new winforms-blazor
```

For WPF:

```shell
dotnet new wpf-blazor
```

To abstract Razor components as a separate Razor class library, pass the below parameter while creating the project:

`-rcl` | `--razor-class-library` - Default value is `false`

For WinForms:

```shell
dotnet new winforms-blazor -rcl
```

For WPF:

```shell
dotnet new wpf-blazor -rcl
```

To target .NET 6 / .NET 8, pass the corresponding value (`net6.0` / `net8.0`) to the framework (`--framework` | `-f`) parameter, example shown below.

```shell
dotnet new winforms-blazor -f net8.0
```

```shell
dotnet new wpf-blazor -f net8.0
```

To uninstall the template package:

```shell
dotnet new uninstall VijayAnand.BlazorTemplates
```
