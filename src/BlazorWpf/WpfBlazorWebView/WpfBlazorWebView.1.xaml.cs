using System.Windows;

namespace MyApp.Namespace
{
    public partial class WpfBlazorWebView__1 : Window
    {
        public WpfBlazorWebView__1()
        {
            Resources.Add("services", Startup.Services);
            InitializeComponent();
        }
    }
}
