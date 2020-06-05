<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaleOrder.aspx.cs" Inherits="DataBase_FinalProjects.View.SaleOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQUEE</title>
    <link href="Assets/style/saleorderstyle.css" rel="stylesheet" />
    <link href="../Assets/style/saleorderstyle.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        
    </form>
    <div class="container">
        <div class="nav-bar">
            <ul>
                <li><a class="title" href="#">SQUEE</a></li>
                <li><a href="#"><i class="fas fa-tshirt"></i>&nbsp Product</a></li>
                <li><a href="#"><i class="fas fa-shopping-bag"></i>&nbsp Cart</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="main-product">
                <div class="img-main">
                    <img src="https://media.gucci.com/content/DarkGray_ProductPush_Standard_700x700/1589982305/ProductPush_60220492TCG9761_001_Light.jpg"/>
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
						<label></label>
                        <asp:LinkButton ID="btnAddToCart" runat="server"><i class="fas fa-shopping-cart button">&nbsp Add to cart</i></asp:LinkButton>
                    </p>
                </div>
            </div>
            <div id="dynamicDiv" runat="server" class ="many-products-else">

            </div>
            
            
        </div>
    </div>
</body>
</html>
