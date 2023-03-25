using Microsoft.AspNetCore.Components.WebView.WindowsForms;

namespace BlazorWinForms._1;

public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();

        var blazor = new BlazorWebView()
        {
            Dock = DockStyle.Fill,
            HostPage = "wwwroot/index.html",
            Services = Startup.Services
        };

        blazor.RootComponents.Add<Main>("#app");
        Controls.Add(blazor);
    }
}
