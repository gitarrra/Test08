<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Register2.aspx.cs" Inherits="Test08.Register2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

 <div class="panel panel-default  col-xs-12 col-sm-6 col-md-4 col-xs-offset-0 col-sm-offset-3 col-md-offset-4">   
      <br />  
   <div class="panel-body">
    
       <h4>Create your account</h4>
       <br />
     <label class="small">First Name</label>  
    <asp:TextBox ID="firstNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>   
    
   </div>



     <div class="panel-body">
    <label class ="small">Last Name</label>  
    <asp:TextBox ID="lastNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>   
     </div>


     <div class="panel-body">
    <label class ="small">Email - Login</label>  
    <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>   
    </div>
     

      <div class="panel-body">
    <label class ="small">Password</label>  
    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>   
    </div>

    <div class="panel-body">
    <asp:Button runat="server" ID="registryButton" OnClick="registryButton_Click" CssClass="btn" Text="Registry" />
    </div>
 </div>     



</asp:Content>
