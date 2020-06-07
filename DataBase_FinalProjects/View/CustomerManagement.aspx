<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminPage.Master" AutoEventWireup="true" CodeBehind="CustomerManagement.aspx.cs" Inherits="DataBase_FinalProjects.View.CustomerManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label" runat="server" Text="Customer Management"></asp:Label>
    </h1>
    
    <div style="overflow: scroll; overflow-x:hidden" class="datatable">
        <asp:Panel ID="pn01" runat="server">
            <asp:GridView AutoGenerateColumns="false" ID="gvCustomerData" runat="server"  AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvCustomerData_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="CustomerId" HeaderText="Order ID"/>
                    <asp:BoundField DataField="CustomerSurname" HeaderText="Customer Surname"/>
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"/>
                    <asp:BoundField DataField="Phone" HeaderText="Phone"/>
                    <asp:BoundField DataField="Email" HeaderText="Email"/>
                    <asp:BoundField DataField="CusAddress" HeaderText="Customer Address"/>
                    <asp:BoundField DataField="Avatar" HeaderText="Avatar"/>
                    <asp:BoundField DataField="Sex" HeaderText="Sex"/>
                    <asp:BoundField DataField="DOB" HeaderText="Date of Birth"/>
                    <asp:BoundField DataField="IsDeleted" HeaderText="Status"/>
                    <asp:BoundField DataField="LastModified" HeaderText="Last Modified"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
    <div>
        <asp:Label ID="lblWarning" style="color:red;" Visible="false" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="half-grid">
        <div>
            <label>Customer ID:</label>
            <asp:TextBox ID="txtCustomerId" runat="server" placeholder="Type something" ></asp:TextBox>
        </div>    
        
        <div>
            <label>Customer Surname:</label>
            <asp:TextBox ID="txtCustomerSurname" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Customer Name:</label>
             <asp:TextBox ID="txtCustomerName" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Email</label>
             <asp:TextBox ID="txtEmail" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Customer Address</label>
             <asp:TextBox ID="txtAddress" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Avartar</label>
             <asp:TextBox ID="txtLink" runat="server" ReadOnly="true" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Sex</label>
            <asp:DropDownList ID="ddlSex" runat="server"></asp:DropDownList>
        </div>
        <div>
            <label>Date of birth</label>
            <asp:TextBox ID="txtDOB" runat="server" placeholder="Type something"></asp:TextBox><asp:ImageButton ID="btnimgCalendar" style="width:2%" ImageUrl="/Assets/img/calendar.svg" runat="server" Text="Calendar" OnClick="btnimgCalendar_Click"/>
            <asp:Calendar ID="cldDOB" runat="server" Visible="false" OnSelectionChanged="cldDOB_SelectionChanged"></asp:Calendar>
        </div>
        <div>
            <label>Status:</label>
            <asp:TextBox ID="txtStatus" ReadOnly="true" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
        <div>
            <label>Last Modified Date:</label>
             <asp:TextBox ID="txtLastModified" ReadOnly="true" runat="server" placeholder="Type something"></asp:TextBox>
        </div>
    </div>
    <div class="controllers">
        <asp:Button ID="btnAddCustomer" class="button" runat="server" Text="Add a Customer" OnClick="btnAddCustomer_Click" />
        <asp:Button ID="btnDeleteCustomer" class="button" runat="server" Text="Delete" OnClick="btnDeleteCustomer_Click" />
        <asp:Button ID="btnFixCustomer" class="button" runat="server" Text="Update customer info" OnClick="btnFixCustomer_Click" />
    </div>
    <h2>Statistical report</h2>
    <div class="same-row">
        <h4><i class="fas fa-filter"></i>&nbsp Filter</h4>
        <asp:DropDownList Style="width: 200px" ID="ddlFilter" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFilter_SelectedIndexChanged" OnTextChanged="ddlFilter_TextChanged">
        </asp:DropDownList>
    </div>
    <div class="datatable" style="overflow:scroll; overflow-x:hidden">
        <asp:GridView ID="gvFilter" runat="server" AutoGenerateColumns="true">

        </asp:GridView>
    </div>
</asp:Content>
