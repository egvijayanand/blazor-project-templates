using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
#if RazorLib
using BlazorWpf._1.RazorLib.Data;
#else
using BlazorWpf._1.Data;
#endif

namespace BlazorWpf._1;

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

    private static void WireupServices(IServiceCollection services)
    {
        services.AddWpfBlazorWebView();
        services.AddSingleton<WeatherForecastService>();

//-:cnd:noEmit
#if DEBUG
        services.AddBlazorWebViewDeveloperTools();
#endif
//+:cnd:noEmit
    }
}
