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

            //replace Guid userId with HttpContext.Current.User.Identity.Name
            //Guid _userGuid = (Guid)Session["userId"];

            string _userName = HttpContext.Current.User.Identity.Name;

            var claims = ClaimRepository.GetListClaim(_userName);

            ListView1.DataSource = claims;
            ListView1.DataBind();
        }

      
    }
}

/*
<ItemTemplate>
                  <tr runat="server">
                    <td>
                      <asp:Label ID="VendorIDLabel" runat="server" Text='<%# Item.ClaimNumber %>' />
                        <br />
                        <a href="ClaimDetails.aspx?claimID=<%# Item.ClaimNumber %>">More detail</a>
                    </td>
                    <td>
                      <asp:Label ID="AccountNumberLabel" runat="server" Text='<%# Item.PatientFirstName %>' />
                    </td>
                    <td>
                      <asp:Label ID="NameLabel" runat="server" Text='<%# Item.PatientLastName %>' /></td>
                    <td>
                        <a href="ClaimDetails.aspx?claimID=<%# Item.ClaimNumber %>">More <br />detail</a>
                    </td>
                  </tr>
                </ItemTemplate>
*/

    