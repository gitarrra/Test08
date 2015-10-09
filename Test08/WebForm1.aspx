<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Test08.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   
     <asp:Button class="btn btn-success" runat="server" ID="okButton" Text="OK" OnClick="okButton_Click" />

 <br />

                <asp:DataPager ID="DataPager1" runat="server" PageSize="2" OnPreRender="DataPager1_PreRender" PagedControlID="ListView1">
                    <Fields>
                        <asp:NextPreviousPagerField />
                    </Fields>
                  </asp:DataPager>

    <asp:ListView ID="ListView1" class="table-responsive" runat="server" ItemType="test04.DTO.Claim" DataKeyNames="ClaimNumber">
               
                <LayoutTemplate>
                  <table class="table"  id="tbl1" runat="server">
                    <tr runat="server" style="background-color: #98FB98">
                      <th runat="server">ID</th>
                      <th runat="server">Account Number</th>
                      <th runat="server">Name</th>
                      <th runat="server">Preferred Vendor</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder" />
                  </table>
                    
                  
                </LayoutTemplate>

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
            </asp:ListView>
    

<%--                                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>--%>




</asp:Content>
