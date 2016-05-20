using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ApontamentosUi.Startup))]
namespace ApontamentosUi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
