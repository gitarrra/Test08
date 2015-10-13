<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="Error2.aspx.cs" Inherits="Test08.Error2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3>There was an application problem</h3>
    <asp:Label runat="server" ID="errorLabel"></asp:Label>
    </div>
    <br />
    <br />

    <div>
        <a href="Default.aspx" class="btn btn-success" role="button">OK</a>
    </div>
</asp:Content>
