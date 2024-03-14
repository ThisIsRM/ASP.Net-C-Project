<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDisplay.aspx.cs" Inherits="ProductDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
            <asp:Label ID="Label1" runat="server" Text="SHOPPING CART PAGE"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
    </div>
        <div>

            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
                style="margin-right: 0px" Width="412px" 
                OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>Product id :
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Prod_ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Prod_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Images") %>' Height="100px" Width="80px" />
                            </td>
                        </tr>
                        <tr>
                            <td>Price :
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Quantity :
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%#Eval("Prod_ID")%>' CommandName="addtocart" Height="66px"  ImageUrl="~/images/v971AxwJuNadd2.jpg" Width="182px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FINS %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
