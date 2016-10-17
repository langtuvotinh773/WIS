using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WisWeb.Startup))]
namespace WisWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
