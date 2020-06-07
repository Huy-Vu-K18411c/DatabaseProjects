<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DataBase_FinalProjects.View.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Assets/style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="middle-content loginScreen">
            <h1>Login</h1>
            <div class="form-login">
                <div class="flex-column">
                    <label>Account</label>
                    <label>Password</label>
                </div>
                <div class="flex-column">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </div>
            </div>
            <div>
                <asp:Label ID="lblWarning" Visible="false" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="controllers">
                <asp:Button ID="btnLogin" class="button" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
