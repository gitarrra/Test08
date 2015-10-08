using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using test04.DB;

namespace Test08
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string password = UserPassTextBox.Text;
            string login = UserEmailTextBox.Text;

            if (ClaimRepository.IsLoginInDatabase(login)>0)
            {
                //check if user name (email) exist
                Console.WriteLine("Zmien login");
                return;


            }


            test04.DB.Crypto.SavePassword(login, password);
        }
    }
}