using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GetPoliza.Startup))]
namespace GetPoliza
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
