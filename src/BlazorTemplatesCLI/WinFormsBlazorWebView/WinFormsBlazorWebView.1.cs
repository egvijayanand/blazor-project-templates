using Microsoft.AspNetCore.Components.WebView.WindowsForms;

namespace MyApp.Namespace
{
    public partial class WinFormsBlazorWebView__1 : Form
    {
        public WinFormsBlazorWebView__1()
        {
            InitializeComponent();

            var bwv = new BlazorWebView()
            {
                Dock = DockStyle.Fill,
                HostPage = "wwwroot/index.html",
                Services = Startup.Services!,
#if Net8OrLater
                StartPath = "/"
#endif
            };

            bwv.RootComponents.Add<Main>("#app");
            Controls.Add(bwv);
        }
    }
}
