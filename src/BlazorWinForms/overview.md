A project template for hosting the Blazor component in the Windows Forms desktop application.

To install the template:

```shell
dotnet new install VijayAnand.WindowsForms.Blazor
```

To make use of the template:

By default, this creates a solution that targets the latest stable version, .NET 7 as of now.

```shell
dotnet new winforms-blazor
```

To abstract Razor components as a separate Razor class library, pass the below parameter while creating the project:

`-rcl` | `--razor-class-library` - Default value is `false`

```shell
dotnet new winforms-blazor -rcl
```

To target .NET 6 / .NET 8, pass the corresponding value (`net6.0` / `net8.0`) to the framework (`--framework` | `-f`) parameter, example shown below.

```shell
dotnet new winforms-blazor -f net8.0
```
