using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using test04.DB;


namespace Test08
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            var claims = ClaimRepository.GetListClaim();



            Dictionary<int, long> claimIndex = new Dictionary<int, long>();

            int i = 0;
            foreach (var _claim in claims)
            {
                claimIndex.Add(i, _claim.ClaimNumber);
                i++;
            }
            
            
            ViewState.Add("claimIndex", claimIndex);




            ListView1.DataSource = claims;
            ListView1.DataBind();
        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            
        }
    }
}