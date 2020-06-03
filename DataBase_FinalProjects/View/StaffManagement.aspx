<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="StaffManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.StaffManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Staff</h1>
    <div class="datatable">
        <asp:Table ID="tbReport" runat="server">
        </asp:Table>
        <asp:PlaceHolder ID="phdReport" runat="server"></asp:PlaceHolder>
    </div>
</asp:Content>
