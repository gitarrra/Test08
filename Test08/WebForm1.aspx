<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Test08.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   
   <div class="col-md-10 col-md-offset-1">

              <h3>List of claims</h3>

    <asp:ListView ID="ListView1"    runat="server" ItemType="test04.DTO.ClaimListItem" DataKeyNames="ClaimNumber">
               
        
        
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
                          <td style="text-align : right"><b><%=TotalAmountBilled %></b></td>
                          <td style="text-align : right"><b><%=TotalYourResponsibility %><b></td>
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
                      <%--<td style="text-align : right"><a href="ClaimDetails.aspx?c=<%# Item.EncryptedClaimNumber %>">More detail</a>--%>
                      <td style="text-align : right"><a href="ClaimDetails.aspx?c=<%# Item.EncryptedClaimNumber %>">More detail</a>
                      </td>
                  </tr>
                </ItemTemplate>
            </asp:ListView>
    <div>
         

        <asp:DataPager ID="DataPager1" runat="server"  PageSize="3" OnPreRender="DataPager1_PreRender" class="btn-group pager-buttons" PagedControlID="ListView1">
        <Fields>
            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" RenderNonBreakingSpacesBetweenControls="false" />
            <asp:NumericPagerField ButtonType="Button" RenderNonBreakingSpacesBetweenControls="false" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" RenderNonBreakingSpacesBetweenControls="false" />
        </Fields>
    </asp:DataPager>



   </div>



<%--                                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>--%>

        </div>


</asp:Content>
