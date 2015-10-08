<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Test08.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="form-horizontal">

    
    <h2>Register a new account</h2>
    <h4>Already sign in ? </h4>
        <p>&nbsp;</p>
        <p>&nbsp;</p>

    <div class="form-group" style="height: 60px">
      <label for="email" class="control-label col-sm-2">Email:</label>
        <div class="col-sm-4">
            <asp:TextBox ID="UserEmailTextBox" runat="server" TextMode="Email" CssClass="form-control" ToolTip="Enter email"    />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmailTextBox"        
            ErrorMessage="Email field cannot be empty." 
            runat="server" Display="None" />

        </div>

    </div>



        <div class="form-group" style="height: 60px">
            <label for="firstname" class="control-label col-sm-2">First Name:</label>
            <div class="col-sm-4">
                <asp:TextBox ID="firstNameTextBox" runat="server" TextMode="SingleLine" CssClass="form-control" ToolTip="Enter email"    />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                ControlToValidate="firstNameTextBox"
                Display="None" 
                ErrorMessage="First Name field cannot be empty." 
                runat="server" />
            </div>
        </div>

        <div class="form-group" style="height: 60px">
            <label for="lastname" class="control-label col-sm-2">Last Name:</label>
            <div class="col-sm-4">
                <asp:TextBox ID="lastNameTextBox" runat="server" TextMode="SingleLine" CssClass="form-control" ToolTip="Enter email"    />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                ControlToValidate="lastNameTextBox"
                ErrorMessage="Last Name field cannot be empty." 
                runat="server" Display="None" />
            </div>
        </div>





    <div class="form-group">
      <label for="pwd" class="control-label col-sm-2">Password:</label>
      <div class="col-sm-3">
          <asp:TextBox ID="UserPassTextBox" TextMode="Password" CssClass="form-control" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                ControlToValidate="UserPassTextBox"
                ErrorMessage="Password field cannot be empty." 
                runat="server" Display="None" />


          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
        ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
        ControlToValidate="UserPassTextBox" Display="Dynamic"></asp:RegularExpressionValidator>
    
      </div>
        <label class="control-label col-sm-2">Confirm Password:</label>
        <div class="col-sm-3">
          <asp:TextBox ID="UserPass2" TextMode="Password" CssClass="form-control" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                ControlToValidate="UserPass2"
                ErrorMessage="Confirm Password field cannot be empty." 
                runat="server" Display="None" />
      </div>
        

    </div>
        
        <br />
        
</div>
    <asp:Button runat="server" ID="submitButton"  Text="RegisterExtra" OnClick="submitButton_Click1" CssClass="btn" />
</asp:Content>
