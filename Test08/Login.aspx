<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test08.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<div class="panel panel-default">
  <div class="panel-body">
      <label for="email">Email:</label>
      <asp:TextBox ID="UserEmail" runat="server" TextMode="Email" CssClass="form-control" ToolTip="Enter email"    />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmail"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />
        
        <%--<input type="email" class="form-control" id="email" placeholder="Enter email">--%>
    </div>



    <div class="form-group">
      <label for="pwd">Password:</label>
      <asp:TextBox ID="UserPass" TextMode="Password" CssClass="form-control" runat="server" />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Cannot be empty." 
            runat="server" />
        
        
        <%--<input type="password" class="form-control" id="pwd" placeholder="Enter password">--%>
    </div>



    <div class="form-group">
     <asp:CheckBox ID="Persist" runat="server" />
    <label> Remember me</label>
    </div>
    <asp:Button ID="Submit1" OnClick="Logon_Click" Text="Log On" runat="server" CssClass="btn" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>
    <%--<button type="submit" class="btn btn-default">Submit</button>--%>
</div>
</asp:Content>
