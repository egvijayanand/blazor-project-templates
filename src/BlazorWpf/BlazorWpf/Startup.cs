using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

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

    private static void WireupServices(HostBuilderContext context, IServiceCollection services)
    {
        services.AddWpfBlazorWebView();

//-:cnd:noEmit
#if DEBUG
        services.AddBlazorWebViewDeveloperTools();
#endif
//+:cnd:noEmit
    }
}
