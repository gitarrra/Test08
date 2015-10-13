<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Error.aspx.cs" Inherits="Test08.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Error</h3>
    <asp:Label runat="server" ID="errorLabel"></asp:Label>
    </div>
    <br />
    <br />

    <div>
        <asp:Button runat="server" ID="okButton" CssClass="btn" Text="OK" OnClick="okButton_Click" />
        <a href="WebForm2.aspx" class="btn btn-info" role="button">linkk</a>
    </div>
    </form>
</body>
</html>
