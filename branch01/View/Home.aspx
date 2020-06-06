<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DataBase_FinalProjects.View.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <label>Welcome back,</label>
        <asp:Label ID="lblWelcome" runat="server" Text="Huy!"></asp:Label>
    </h1>
    <div class="dashboard">
        <h3>Today's overview</h3>
        <div>
            <label>Order:</label>
            <asp:Label ID="lblOrder" runat="server" Text="1000"></asp:Label>
        </div>
        <div>
            <label>Quantity has been sold:</label>
            <asp:Label ID="lblQuantity" runat="server" Text="1000"></asp:Label>
        </div>
        <div>
            <label>Today's revenue:</label>
            <asp:Label ID="lblRevenue" runat="server" Text="1000"></asp:Label>
        </div>
        <div>
            <label>Note:</label>
            <!--if something is sold out we manage to display it at lblNote-->
            <asp:Label ID="lblNote" runat="server" Text="A is sold out"></asp:Label>
        </div>


    </div>
</asp:Content>
