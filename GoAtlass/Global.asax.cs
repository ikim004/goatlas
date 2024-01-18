using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace GoAtlass
{
    public class Global : HttpApplication
    {
        protected void Application_Beg(object sender, EventArgs e)
        {
            string Url = HttpContext.Current.Request.Url.AbsoluteUri;

            if (!Url.ToLower().Equals(Request.Url.AbsoluteUri.ToLower()))
            {
                Response.RedirectPermanent(Url, true); 
            }
        }
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}