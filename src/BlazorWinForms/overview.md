### Blazor Hybrid Windows Forms Project Template

A project template for hosting the Blazor component in the Windows Forms desktop application.

To install the template:

```shell
dotnet new install VijayAnand.WindowsForms.Blazor
```

To make use of the template:

By default, this creates a solution that targets `.NET 10`, the latest stable release channel.

```shell
dotnet new winforms-blazor
```

To target `.NET 8`, `.NET 9`, or `.NET 11` (Preview), pass the explicit value (`net8.0` / `net9.0` / `net11.0`) to the Framework (`--framework` | `-f`) parameter, examples shown below.

```shell
dotnet new winforms-blazor -f net8.0
```

```shell
dotnet new winforms-blazor -f net9.0
```

```shell
dotnet new winforms-blazor -f net11.0
```

Optionally, to abstract Razor components as a separate Razor Class Library (RCL), pass the below parameter while creating the project:

`-rcl` | `--razor-class-library` - Default value is `false`

```shell
dotnet new winforms-blazor -rcl
```

Optionally, to make use of NuGet Central Package Management (CPM) feature, pass the below parameter while creating the project (_Supported from v3.5.0 onwards_):

`-cpm` | `--central-pkg-mgmt` - Default value is `false`

```shell
dotnet new winforms-blazor -cpm
```

Has support for Item Template too:

* Windows Form with BlazorWebView 
  - Named as `winforms-bwv`

It requires a parameter:

* `-n` | `--name` - The Name of the Item to create.

Note:

*Make sure the project dependencies are restored before creating a new item from these templates.*

```shell
dotnet new winforms-bwv -n MyForm
```
