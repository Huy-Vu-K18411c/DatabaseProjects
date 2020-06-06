﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.ProductManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label" runat="server" Text="Product Management"></asp:Label>
    </h1>
    <div class="same-row">
        <h4><i class="fas fa-filter"></i>&nbsp Filter</h4>
        <asp:DropDownList Style="width: 200px" ID="ddlFilter" runat="server">
        </asp:DropDownList>
    </div>
    <div class="datatable">
        <asp:Table ID="tbDataTable" runat="server">
            
        </asp:Table>
        <asp:PlaceHolder ID="phdDataTable" runat="server"></asp:PlaceHolder>
    </div>
    <div class="half-grid">
        <div>
            <label>Product Name:</label>
            <input id="txtProductName" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>    
        <div>
            <label>Product...:</label>
            <input id="txtsth" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
        <div>
            <label>Product...:</label>
            <input id="txtsth2" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
        <div>
            <label>Product...:</label>
            <input id="txtsth3" type="text" placeholder="Duplicate this div if you want a new lable + input" />
        </div>
    </div>
    <div class="controllers">
        <asp:Button ID="btnAddProduct" class="button" runat="server" Text="Add a product" />
        <asp:Button ID="btnDeleteProduct" class="button" runat="server" Text="Delete" />
        <asp:Button ID="btnFixProduct" class="button" runat="server" Text="Fix" />
        <asp:Button ID="btnStatisticProduct" class="button" runat="server" Text="Statistic"/>
    </div>
    <h2>Statistical report</h2>
    <div class="datatable">
        <asp:Table ID="tbReport" runat="server">
        </asp:Table>
        <asp:PlaceHolder ID="phdReport" runat="server"></asp:PlaceHolder>
    </div>
</asp:Content>
