<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="WarehouseManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.WarehouseManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Warehouse Management</h1>
    <div class="datatable">
        <asp:Table ID="tbReport" runat="server">
        </asp:Table>
        <asp:PlaceHolder ID="phdReport" runat="server">

        </asp:PlaceHolder>
    </div>
</asp:Content>
