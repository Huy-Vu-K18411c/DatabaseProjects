<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaleOrder.aspx.cs" Inherits="DataBase_FinalProjects.View.SaleOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQUEE</title>
    <link href="Assets/style/saleorderstyle.css" rel="stylesheet" />
    <link href="../Assets/style/saleorderstyle.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="nav-bar">
                <ul>
                    <li><a class="title" href="#">SQUEE</a></li>
                    <li><a href="/"><i class="fas fa-tshirt"></i>&nbsp Product</a></li>
                    <li><a href="/Cart.aspx"><i class="fas fa-shopping-bag"></i>&nbsp Cart</a></li>
                </ul>
            </div>
            <div class="content">
                <div class="main-product">
                    <div class="img-main">
                        <img src="https://media.gucci.com/content/DarkGray_ProductPush_Standard_700x700/1589982305/ProductPush_60220492TCG9761_001_Light.jpg" />
                    </div>
                    <div class="describe-main middle-content-column">
                        <h2>
                            <asp:Label ID="lblNameProduct" runat="server" Text="Label"></asp:Label>
                        </h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        </p>
                        <p>
                            Price: 
                            <asp:Label ID="lblPriceProductA" runat="server" Text="1.500.000 VND"></asp:Label>
                            <asp:LinkButton ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </p>
                    </div>
                </div>
                <div id="dynamicDiv" runat="server" class="many-products-else">
                    <div>
                        <div id="Div1" runat="server">
                            <asp:Label ID="lblproa" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label1" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                    <div>
                        <div id="Div2" runat="server">
                            <asp:Label ID="lblprob" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label2" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                    <div>
                        <div id="Div3" runat="server">
                            <asp:Label ID="lblproc" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label3" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                    <div>
                        <div id="Div4" runat="server">
                            <asp:Label ID="lblprod" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label4" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                    <div>
                        <div id="Div5" runat="server">
                            <asp:Label ID="lblproe" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label5" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                    <div>
                        <div id="Div6" runat="server">
                            <asp:Label ID="lblprof" runat="server" Text="Label"></asp:Label>
                            Price: 
                            <asp:Label ID="Label6" runat="server" Text="1.500.000 VND"></asp:Label>
                        </div>
                        <div>
                            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
