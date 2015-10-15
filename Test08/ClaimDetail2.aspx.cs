using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




//added

using System.Web.ModelBinding;
using test04.DTO;

namespace Test08
{
    public partial class ClaimDetail2 : System.Web.UI.Page
    {
        //Claim claim = new Claim();
        public ClaimListItem claim { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {

            string _queryStringS = Request.QueryString["c"];
            if (_queryStringS != null)
            { 
                claim = GetClaimDetails(_queryStringS);
                calculateTotal();

            }
            else
            {
                throw new Exception("There was a problem with a system. There was no Claim number.");
            }
        }




        public ClaimListItem GetClaimDetails(string _claimEncrypted)
        {
            //replace Guid userId with HttpContext.Current.User.Identity.Name
            //Guid _userGuid = (Guid)Session["userId"];
            string _userName = HttpContext.Current.User.Identity.Name;


            long _claimNumber = long.Parse(XORencrypt.Decrypt(_claimEncrypted, _userName));

            claim = ClaimListItem.ConvertClaimToClaimListItem (test04.DB.ClaimRepository.GetClaim(_claimNumber));

            return claim;
        }


        public List<ServiceClaim> GetServiceList()
        {
            //to.do: protect against empty, null claim
            //---------------------------------------

            List<ServiceClaim> _listServices = new List<ServiceClaim>();
            _listServices = claim.ServicesClaimList;
            return _listServices;
        }

        public List<StatusClaim> GetStatusList()
        {
            //to.do: protect against empty, null claim
            //---------------------------------------

            List<StatusClaim> _listStatuses = new List<StatusClaim>();
            _listStatuses = claim.StatusesClaimList;
            return _listStatuses;
        }

        private void calculateTotal ()
        {
            decimal _discount = 0;
            decimal _planPaid = 0;
            decimal _amount = 0;
            decimal _responsibility = 0;

            foreach (var item in this.claim.ServicesClaimList)
            {
                _discount += item.PlanDiscount;
                _planPaid += item.PlanPaid;
                _amount += item.AmountBilled;
                _responsibility += item.PatientResponsibility;
            }

            claim.AmountBilledSum = _amount;
            claim.PatientResponsibilitySum = _responsibility;
            claim.PlanDiscountSum = _discount;
            claim.PlanPaidSum = _planPaid;

            
        }
    }
}