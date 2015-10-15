using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using test04.DB;
using test04.DTO;


namespace Test08
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string TotalAmountBilled { get; set; }
        public string TotalYourResponsibility { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataPager1_PreRender(object sender, EventArgs e)
        {

            //replace Guid userId with HttpContext.Current.User.Identity.Name
            //Guid _userGuid = (Guid)Session["userId"];

            string _userName = HttpContext.Current.User.Identity.Name;

            var claims = ClaimRepository.GetListClaim(_userName);
            calculateTotal(claims);

            

            ListView1.DataSource = claims;
            ListView1.DataBind();
        }

        protected void ListView1_DataBound(object sender, EventArgs e)
        {
            DataPager1.Visible = (DataPager1.PageSize < DataPager1.TotalRowCount);
        }

        private void calculateTotal(List<ClaimListItem> _claimsList)
        {
            decimal _amount = 0;
            decimal _resposibility = 0;


            foreach (var item in _claimsList)
            {
                _amount += (decimal)item.AmountBilledSum;
                _resposibility += (decimal)item.PatientResponsibilitySum;
            }

            TotalAmountBilled = String.Format("{0:C}",_amount);
            TotalYourResponsibility = String.Format("{0:C}", _resposibility);
        }
      
    }
}