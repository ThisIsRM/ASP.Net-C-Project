<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seastock.aspx.cs" Inherits="seastock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <asp:Label ID="Label1" runat="server" Text="PRODUCT NAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtprod_name" runat="server" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <asp:Button ID="Button1"  runat="server" Text="ADD STOCK" OnClick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2"  runat="server" Text="UPDATE STOCK" OnClick="Button2_Click1"  />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3"  runat="server" Text="DELETE STOCK" OnClick="Button3_Click1"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099" NavigateUrl="~/Category.aspx"> ~Category</asp:HyperLink>
        <br />
        <br />
        <br />
              
        <asp:GridView ID="GridView1" runat="server">
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
