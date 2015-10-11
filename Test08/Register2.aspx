<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Register2.aspx.cs" Inherits="Test08.Register2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="col-sm-6">   
        
    <label class="small">First Name</label>  
    <asp:TextBox ID="firstNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>   
    <br />

    <label class ="small">Last Name</label>  
    <asp:TextBox ID="lastNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>   
    <br />

    <label class ="small">Email - Login</label>  
    <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>   
    <br />

    <label class ="small">Password</label>  
    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>   
    <br />

    <br />
    <asp:Button runat="server" ID="registryButton" OnClick="registryButton_Click" CssClass="btn" Text="Registry" />

 </div>     



</asp:Content>
