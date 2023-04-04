#if RazorLib
namespace BlazorWinForms._1.RazorLib.Data
#else
namespace BlazorWinForms._1.Data
#endif
{
    public class WeatherForecast
    {
        public DateTime Date { get; set; }

        public int TemperatureC { get; set; }

        public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);

        public string? Summary { get; set; }
    }
}
