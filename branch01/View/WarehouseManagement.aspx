<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="WarehouseManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.WarehouseManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label" runat="server" Text="Warehouse Management"></asp:Label>
    </h1>
    <div class="same-row">
        <h4><i class="fas fa-filter"></i>&nbsp Filter</h4>
        <asp:DropDownList Style="width: 200px" ID="ddlFilter" runat="server" OnSelectedIndexChanged="ddlFilter_SelectedIndexChanged" OnTextChanged="ddlFilter_TextChanged">
        </asp:DropDownList>
    </div>
    <div class="datatable">
        <asp:GridView ID="gvDataWareHouse" runat="server">

        </asp:GridView>
    </div>
    <div class="half-grid">
        <div>
            <label>Sth Name:</label>
            <input id="txtProductName" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>    
        <div>
            <label>Sth...:</label>
            <input id="txtsth" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
        <div>
            <label>Sth...:</label>
            <input id="txtsth2" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
        <div>
            <label>Sth...:</label>
            <input id="txtsth3" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
    </div>
    <div class="controllers">
        <asp:Button ID="btnAddSth" class="button" runat="server" Text="Add a Sth" />
        <asp:Button ID="btnDeleteSth" class="button" runat="server" Text="Delete" />
        <asp:Button ID="btnFixSth" class="button" runat="server" Text="Fix" />
        <asp:Button ID="btnStatisticSth" class="button" runat="server" Text="Statistic"/>
    </div>
    <h2>Statistical report</h2>
    <div class="datatable">
        <asp:Table ID="tbReport" runat="server">
        </asp:Table>
        <asp:PlaceHolder ID="phdReport" runat="server"></asp:PlaceHolder>
    </div>
</asp:Content>
