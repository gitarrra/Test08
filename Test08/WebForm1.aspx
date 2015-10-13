<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Test08.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   
     <asp:Button class="btn btn-success" runat="server" ID="okButton" Text="OK"  />


 <br />

                <asp:DataPager ID="DataPager1" class="nav-tabs" runat="server" PageSize="10" OnPreRender="DataPager1_PreRender" PagedControlID="ListView1">
                    <Fields>
                        <asp:NextPreviousPagerField />
                    </Fields>
                  </asp:DataPager>

    <asp:ListView ID="ListView1"    runat="server" ItemType="test04.DTO.ClaimListItem" DataKeyNames="ClaimNumber">
               
                <LayoutTemplate>
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
                  </table>
                    
                  
                </LayoutTemplate>

                <ItemTemplate>
                  <tr>
                      <td><%# Item.DateClaim.ToShortDateString() %></td>
                      <td><%# Item.FacilityName %></td>
                      <td><%# Item.PatientFirstName %> <%# Item.PatientLastName %></td>
                      <td style="text-align : right" ><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.AmountBilledSum) %></td>
                      <td style="text-align : right"><%# String.Format(new System.Globalization.CultureInfo("en-US"), "{0:C}", Item.PatientResponsibilitySum) %></td>
                      <td style="text-align : right"><a href="ClaimDetails.aspx?c=<%# Item.EncryptedClaimNumber %>">More detail</a>
                      </td>
                  </tr>
                </ItemTemplate>
            </asp:ListView>
    

<%--                                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>--%>




</asp:Content>
