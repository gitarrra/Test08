<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="ClaimsList.aspx.cs" Inherits="Test08.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
  
   <div class="col-md-10 col-md-offset-1">

              <h3>List of claims<span  style="position: absolute; right: 0px; ">
         
        <asp:DataPager ID="DataPager1" runat="server"  PageSize="10" OnPreRender="DataPager1_PreRender" class="btn"  PagedControlID="ListView1">
            <Fields>
                <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-xs btn-default" RenderNonBreakingSpacesBetweenControls="false" />
                <asp:NumericPagerField ButtonType="Button" RenderNonBreakingSpacesBetweenControls="false" NumericButtonCssClass="btn btn-xs btn-default" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-xs btn-default" RenderNonBreakingSpacesBetweenControls="false" />
            </Fields>
        </asp:DataPager>
   </span></h3>
       <br />



    <asp:ListView ID="ListView1"    runat="server" ItemType="test04.DTO.ClaimListItem" DataKeyNames="ClaimNumber" OnDataBound="ListView1_DataBound">
               
        
        
                <LayoutTemplate>
                    <br />
                    
                  <table class="table"  id="tbl1" runat="server">
                    <tr>
                        <th>Date</th>
                        <th>Place</th>
                        <th>Patient</th>
                        <th style="text-align : right">Amount Billed</th>
                        <th style="text-align : right" >Your Responsibility</th>
                        <th style="text-align : right">Info</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder" />
                      <tfoot>
                        <tr>
                            <td></td>
                            <td></td>   
                          <td style="text-align : right"><b>Total</b></td>
                          <td style="text-align : right"><b><%=String.Format("{0:C}", TotalAmountBilled) %></b></td>
                          <td style="text-align : right"><b><%=String.Format("{0:C}", TotalYourResponsibility) %><b></td>
                            <td></td>
                        </tr>
                    </tfoot>
                  </table>
                    
                  
                </LayoutTemplate>

                <ItemTemplate>
                  <tr>
                      <td><%# Item.DateClaim.ToShortDateString() %></td>
                      <td><%# Item.FacilityName %></td>
                      <td><%# Item.PatientFirstName %> <%# Item.PatientLastName %></td>
                      <td style="text-align : right" ><%# String.Format("{0:C}", Item.AmountBilledSum) %></td>
                      <td style="text-align : right"><%# String.Format("{0:C}", Item.PatientResponsibilitySum) %></td>
                      <td style="text-align : right"><a href="ClaimDetail2.aspx?c=<%# Item.EncryptedClaimNumber %>">More detail</a>
                      </td>
                  </tr>
                </ItemTemplate>
            </asp:ListView>
    
  
       



<%--                                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>--%>

        </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterPlaceHolder" runat="server">

  



</asp:Content>