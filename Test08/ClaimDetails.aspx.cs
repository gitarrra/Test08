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
    public partial class ClaimDetails : System.Web.UI.Page
    {
        Claim claim = new Claim();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Dictionary<int, long> claimIndex = (Dictionary < int, long>)ViewState["claimIndex"];
            //string _result = "";

            //foreach (var indexItem in claimIndex)
            //{
                
            //        _result += indexItem.Key + " " + indexItem.Value;
            //}


            
        }

        
        public Claim GetClaimDetails(
                    [QueryString("ClaimID")] long? _claimNumber)
        {
            
            if (_claimNumber.HasValue)
            {
                claim = test04.DB.ClaimRepository.GetClaim((long)_claimNumber);
            }
            else
            {
                claim = null;
            };

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
    }
}