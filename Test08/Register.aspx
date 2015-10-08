<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Test08.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="form-horizontal" role="form">

    
    <h2>Register a new account</h2>
    <h4>Already sign in ? </h4>
        <p>&nbsp;</p>
        <p>&nbsp;</p>

    <div class="form-group" style="height: 100px">
      <label for="email" class="control-label col-sm-2">Email:</label>
        <div class="col-sm-4">
            <asp:TextBox ID="UserEmailTextBox" runat="server" TextMode="Email" CssClass="form-control" ToolTip="Enter email"    />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmailTextBox"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />

        </div>

    </div>

    <div class="form-group">
      <label for="pwd" class="control-label col-sm-2">Password:</label>
      <div class="col-sm-3">
          <asp:TextBox ID="UserPassTextBox" TextMode="Password" CssClass="form-control" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                ControlToValidate="UserPassTextBox"
                ErrorMessage="Cannot be empty." 
                runat="server" />


          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
        ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
        ControlToValidate="UserPassTextBox"></asp:RegularExpressionValidator>
    
      </div>
        <label class="control-label col-sm-2">Confirm Password:</label>
        <div class="col-sm-3">
          <asp:TextBox ID="UserPass2" TextMode="Password" CssClass="form-control" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                ControlToValidate="UserPass2"
                ErrorMessage="Cannot be empty." 
                runat="server" />
      </div>
        

    </div>

        <br />
        <asp:Button runat="server" ID="submitButton" Text="Register" CssClass="btn" OnClick="submitButton_Click" />
</div>
</asp:Content>
