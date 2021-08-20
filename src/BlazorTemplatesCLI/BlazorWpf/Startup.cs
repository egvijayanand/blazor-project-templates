using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;

namespace BlazorWpf
{
	public class Startup
	{
		public static IServiceProvider Services { get; private set; }

		public static void Init()
		{
			var host = Host.CreateDefaultBuilder()
						   .ConfigureServices((c, x) => WireupServices(c, x))
						   .Build();
			Services = host.Services;
		}

		private static void WireupServices(HostBuilderContext context, IServiceCollection services)
		{
			services.AddBlazorWebView();
		}
	}
}