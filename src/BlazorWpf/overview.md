A project template for hosting the Blazor component in the WPF desktop application.

To install the template:

```shell
dotnet new install VijayAnand.Wpf.Blazor
```

To make use of the template:

By default, this creates a solution that targets the latest stable version, .NET 7 as of now.

```shell
dotnet new wpf-blazor
```

To target .NET 6 / .NET 8, pass the corresponding value (`net6.0` / `net8.0`) to the framework (`--framework` | `-f`) parameter, example shown below.

```shell
dotnet new wpf-blazor -f net8.0
```
