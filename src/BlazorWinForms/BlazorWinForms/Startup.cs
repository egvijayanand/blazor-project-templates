using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
#if RazorLib
using BlazorWinForms._1.RazorLib.Data;
#else
using BlazorWinForms._1.Data;
#endif

namespace BlazorWinForms._1;

public static class Startup
{
    public static IServiceProvider? Services { get; private set; }

    public static void Init()
    {
        var host = Host.CreateDefaultBuilder()
                       .ConfigureServices(WireupServices)
                       .Build();
        Services = host.Services;
    }

    private static void WireupServices(HostBuilderContext context, IServiceCollection services)
    {
        services.AddWindowsFormsBlazorWebView();
        services.AddSingleton<WeatherForecastService>();

//-:cnd:noEmit
#if DEBUG
        services.AddBlazorWebViewDeveloperTools();
#endif
//+:cnd:noEmit
    }
}
