using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using test04.DB;


namespace Test08
{
    public partial class Register2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void registryButton_Click(object sender, EventArgs e)
        {
            //Server.HtmlEncode(
            string firstName = firstNameTextBox.Text.Trim();
            string lastName = lastNameTextBox.Text.Trim();
            string email = emailTextBox.Text.Trim();
            string password = passwordTextBox.Text.Trim();



            

            if (ClaimRepository.IsLoginInDatabase(email) > 0)
            {
                //check if user name (email) exist
                
                return;
            }


            if (test04.DB.Crypto.SavePassword(firstName, lastName, email, password))
                Response.Redirect("~/WebForm2");

        }
    }
}