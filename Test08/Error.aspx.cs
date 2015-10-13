using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test08
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();


            if (ex != null)
            {
                errorLabel.Text = ex.InnerException.Message;
            }
            else
            {
                errorLabel.Text = "Something went wrong...";
            }
            Server.ClearError();
        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx",false);


            //Response.Redirect(Request.RawUrl); refresh web page



            // Server.Transfer("WebForm2.aspx");
        }
    }
    }
