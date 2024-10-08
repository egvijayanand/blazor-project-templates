using Microsoft.AspNetCore.Components.WebView.WindowsForms;

namespace BlazorWinForms._1;

public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();

        var bwv = new BlazorWebView()
        {
            Dock = DockStyle.Fill,
            HostPage = "wwwroot/index.html",
#if Net8OrLater
            Services = Startup.Services!,
            StartPath = "/counter"
#else
            Services = Startup.Services!
#endif
        };

        bwv.RootComponents.Add<Main>("#app");
        Controls.Add(bwv);
    }
}
