using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

using System.Web.Routing;


namespace Test08
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        void Application_Error(object sender, EventArgs e)
        {
            //Exception ex = Server.GetLastError();
            //var InnerException = ex.InnerException;

            Server.Transfer("/Error2.aspx");

            //if (InnerException.GetType() == typeof(ArgumentOutOfRangeException))
            //{
            //    Server.Transfer("Error.aspx");
            //}
            //Response.Write("<h2>Something...</h2>");
            //Response.Write("<p>" + InnerException.Message + "  source: " + InnerException.Source);

            
        }
    }

}