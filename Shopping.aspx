<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CART</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style4 {
            height: 46px;
            text-align: center;
        }
        .auto-style6 {
            height: 31px;
            text-align: center;
        }
        .auto-style7 {
            height: 35px;
            text-align: center;
        }
        .auto-style8 {
            height: 40px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx">&nbsp;<img src="images/Logo.png" alt="WebSite1(1)" style="height: 100px" /></a>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx"><span class="glyphicon glyphicon-envelope"></span>Home</a></li>
                    <li><asp:Button ID="Button2" CssClass="btn btn-danger" runat="server"  Text="Sign Out" Width="122px" /></li>
                    <li><asp:Label ID="Label1" runat="server" CssClass="text-success"></asp:Label></li>
                </ul>
            </div>
        </nav>
        <br />
        <br />
        
        
        
                

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addtocart.aspx">HyperLink</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="501px"  RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prod_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Images") %>' Height="100px" Width="50px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
                                <asp:Label ID="Label4" runat="server" style="text-align: center" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="Label7" runat="server" Text="Quantity"></asp:Label>
                                
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="addtocart" runat="server" Height="81px" ImageUrl="~/images/buy now.png" Width="206px" CommandArgument='<%# Eval("Prod_name")%>' CommandName="addtocart" OnClick="addtocart_Click"  />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FINS %>" SelectCommand="SELECT [Prod_name], [Prod_Qty], [Price], [Prod_category], [Images] FROM [Stock]"></asp:SqlDataSource>
        
        
        
                

    </form>
</body>
</html>
