<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stockmanage.aspx.cs" Inherits="dell" %>
    
        
<!DOCTYPE html>
        
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Stock Manage</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <a class="navbar-brand" href="Default.aspx">&nbsp;<img src="images/Logo.png" alt="WebSite1(1)" style=" height: 100px" /></a></div>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        </ul>
      <ul class="nav navbar-nav navbar-right">
         
        <li class="active"><a href="Default.aspx"><span class="glyphicon glyphicon-user"></span> ADMIN</a></li>
       
      </ul>
    </div>
        </nav>
        <br />
        <br />

        <!---STOCK---->
       
    <div>
        <br />
        <br />


        <asp:Label ID="Label6" runat="server" Text="PRODUCT ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtproid" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="PRODUCT NAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprod_name" runat="server" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="FETCH" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="PRODUCT QUANTITY"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprod_qty" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="PRICE"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="PRODUCT CATEGORY"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>SEA FOODS</asp:ListItem>
            <asp:ListItem>CHICKEN</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="UPLOAD IMAGE"></asp:Label>
        <asp:FileUpload ID="f1" runat="server" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1"  runat="server" Text="ADD STOCK" OnClick="Button1_Click1" Width="142px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2"  runat="server" Text="UPDATE STOCK" OnClick="Button2_Click1"  />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3"  runat="server" Text="DELETE STOCK" OnClick="Button3_Click1"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099" NavigateUrl="~/Category.aspx"> ~Category</asp:HyperLink>
        <br />
        <br />
        <br />
              
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="277px" Width="708px" >
            
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
              </div>
        </div>
            
    </form>
</body>
</html>
