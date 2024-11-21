using Microsoft.AspNetCore.Components.WebView.WindowsForms;

namespace $rootnamespace$
{
    public partial class $safeitemname$ : Form
    {
        public $safeitemname$()
        {
            InitializeComponent();

            // StartPath property is supported on .NET 8 or later
            // This allows to load a Razor component other than the one defined with default route address of '/'
            var bwv = new BlazorWebView()
            {
                Dock = DockStyle.Fill,
                HostPage = "wwwroot/index.html",
                Services = Startup.Services!,
                StartPath = "/"
            };

            bwv.RootComponents.Add<Main>("#app");
            Controls.Add(bwv);
        }
    }
}
