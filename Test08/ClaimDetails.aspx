<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="ClaimDetails.aspx.cs" Inherits="Test08.ClaimDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <LINK rel="stylesheet" href="Content/style-for-print.css" type="text/css" media="print">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView runat="server" ID="claimDetails" ItemType="test04.DTO.Claim" SelectMethod="GetClaimDetails" DataKeyNames="ClaimNumber" RenderOuterTable="False">
        <ItemTemplate>

            <asp:Panel runat="server" ID="claimHeaderPanel">
               <h6> <table style="text-align: right; width: 100% ;  border-style:none">
                    <colgroup>
                        <col />
                        <col style="width: 180px" />
                        <col style="width: 200px" />
                    </colgroup>
                    <tr style="height: 20px">
                        <td style="text-align: left"">Claim No.<%# Item.ClaimNumber %>for <%# Item.PatientFirstName %>&nbsp<%# Item.PatientLastName %></td>
                        <td>
                            Date Received
                        </td>
                        <td>
                            <%# Item.DateClaim.ToShortDateString() %>
                        </td>
                    </tr>
                    <tr  style="height: 20px">
                        <td></td>
                        <td><b>Visited</b></td>
                        <td><%# Item.FacilityName %></td>
                    </tr>
                    
                 

                </table></h6>

            </asp:Panel>
        </ItemTemplate>
    </asp:FormView>

    <br />
    <br />
    <br />
    <br />

    
    <asp:FormView runat="server" ID="FormViewServices" ItemType="test04.DTO.ServiceClaim" SelectMethod="GetServiceList" DataKeyNames="ClaimNumber" RenderOuterTable="False">
        <ItemTemplate>
            
           <table class="table">
                <colgroup>
                        <col />
                        <col style="width: 80px" />
                        <col style="width: 80px" />
                        <col style="width: 80px" />
                        <col style="width: 80px" />
                    </colgroup>
                <thead>
                    <tr>
                        <th>Service</th>
                        <th>Amount Billed</th>
                        <th>Plan Discounts</th>
                        <th>Your Plan Paid</th>
                        <th>Your Responsibility</th>
                    </tr>        
                </thead>
                    <tr>
                        <td> 
                            <b><%# Item.DetailsText %></b><br />
                            <%# Item.DateVisited.ToShortDateString() %>
                        </td>
                        <td><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.AmountBilled) %></td>
                        <td><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.PlanDiscount) %></td>
                        <td><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.PlanPaid) %></td>
                        <td><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.PatientResponsibility) %></td>
                    </tr>
            </table>
           
        </ItemTemplate>
    </asp:FormView>


    <br />
    <br />
    <br />

    <br />
   

    
    <br />

    <div>


    <asp:GridView ID="GridView1" runat="server" ItemType="test04.DTO.StatusClaim" SelectMethod="GetStatusList" AutoGenerateColumns="False"   Caption="Claim History:" CaptionAlign="Left" ShowHeader="False" CellPadding="4" CellSpacing="2" HorizontalAlign="Left">
       
        <RowStyle Width="180"/>
         <Columns >
            
            <asp:TemplateField> 
                        
                <ItemTemplate>
                    <%# Item.DateStatus.ToShortDateString() %>
                </ItemTemplate>      
            </asp:TemplateField> 

            <asp:TemplateField>            
                <ItemTemplate>
                    <%# Item.Status %>
                </ItemTemplate> 
            </asp:TemplateField> 
        </Columns>
        
        
    </asp:GridView>

   </div>
    

    
    <%--<input type="button" id="printButton" value="Print" title="Print" onclick="javascript: window.print();" />--%>


    <button class="btn" onclick="printPage()">Print this page</button>
    <script>
    function printPage() {
        window.print();
    }
    </script>





</asp:Content>


<%--<asp:FormView ID="productDetail" runat="server" ItemType="WingtipToys.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>--%>