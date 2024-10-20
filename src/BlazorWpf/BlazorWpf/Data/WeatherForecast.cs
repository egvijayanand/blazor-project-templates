#if RazorLib
namespace BlazorWpf._1.RazorLib.Data
#else
namespace BlazorWpf._1.Data
#endif
{
    public class WeatherForecast
    {
        public DateTime Date { get; init; }

        public int TemperatureC { get; init; }

        public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);

        public string? Summary { get; init; }
    }
}
