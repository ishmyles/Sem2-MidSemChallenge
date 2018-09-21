using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ChallengeAPI.Startup))]
namespace ChallengeAPI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
