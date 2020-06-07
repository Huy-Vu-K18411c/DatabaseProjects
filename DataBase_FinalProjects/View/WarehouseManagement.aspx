<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="WarehouseManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.WarehouseManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label" runat="server" Text="Warehouse Management"></asp:Label>
    </h1>
    <div class="same-row">
        <h4><i class="fas fa-filter"></i>&nbsp Filter</h4>
        <asp:DropDownList Style="width: 200px" ID="ddlFilter" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlFilter_SelectedIndexChanged" OnTextChanged="ddlFilter_TextChanged">
        </asp:DropDownList>
    </div>
    <div style="overflow: scroll; overflow-x:hidden" class="datatable">
        <asp:Panel ID="pn01" runat="server">
            <asp:GridView AutoGenerateColumns="false" ID="gvDataWareHouse" runat="server" OnSelectedIndexChanged="gvDataWareHouse_SelectedIndexChanged" AutoGenerateSelectButton="True">
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="Order ID"/>
                    <asp:BoundField DataField="CustomerSurname" HeaderText="Customer Surname"/>
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"/>
                    <asp:BoundField DataField="CreateDate" HeaderText="Create Date"/>
                    <asp:BoundField DataField="TotalValue" HeaderText="Total Value"/>
                    <asp:BoundField DataField="Status" HeaderText="Status"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
    <div class="half-grid">
        <div>
            <label>Order ID:</label>
            <asp:TextBox ID="txtOrderId" runat="server" ReadOnly="true" placeholder="Type something" OnTextChanged="txtOrderId_TextChanged"></asp:TextBox>
        </div>    
        <div>
            <label>Create Date:</label>
            <asp:TextBox ID="txtCreateDate" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Customer Surname:</label>
            <asp:TextBox ID="txtCustomerSurname" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Customer Name:</label>
             <asp:TextBox ID="txtCustomerName" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Total Value:</label>
             <asp:TextBox ID="txtTotalValue" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Status:</label>
             <asp:TextBox ID="txtStatus" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
    </div>
    <div class="controllers">
        <asp:Button ID="btnAddSth" class="button" runat="server" Text="Find an Order" />
    </div>
    <h2>Order Detail</h2>
    <div style="overflow: scroll; overflow-x:hidden" class="datatable">
        <asp:Panel ID="pn02" runat="server">
            <asp:GridView AutoGenerateColumns="false" ID="gvOrderDetail" runat="server" OnSelectedIndexChanged="gvDataWareHouse_SelectedIndexChanged" >
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="Order ID"/>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name"/>
                    <asp:BoundField DataField="Size" HeaderText="Size"/>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity"/>
                    <asp:BoundField DataField="OutputPrice" HeaderText="Output Price"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
