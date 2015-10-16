<%@ Page Title="" Language="C#" MasterPageFile="~/Test08.Master" AutoEventWireup="true" CodeBehind="UserData.aspx.cs" Inherits="Test08.user_area.UserData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default  col-xs-12 col-sm-6 col-md-4 col-xs-offset-0 col-sm-offset-3 col-md-offset-4">
        <br />
        <div class="panel-body">
            <h2>User data</h2>
        </div>
        <div class="panel-body">
            <p>To.Do...</p>
        </div>
        <div class="panel-body">

        </div>
        <div class="panel-body">

        </div>
        <div class="panel-body">

        </div>
        <div class="panel-body">

        </div>
        <div class="panel-body">
            <asp:Button runat="server" ID="userDataButton"  CssClass="btn" Text="OK" PostBackUrl="~/Default.aspx" />
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterPlaceHolder" runat="server">
</asp:Content>
