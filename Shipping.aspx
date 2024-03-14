<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shipping</title>
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
          <li><a href ="Adminhome.aspx"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
          <li class="active"><a href ="Default.aspx"><span class="glyphicon glyphicon-envelope"></span> Home</a></li>
        <li><a href="Default.aspx"><span class="glyphicon glyphicon-user"></span> Sign out</a></li>
        
      </ul>
    </div>
  
</nav>
        <!--Shipping page---->
         <div class="center-page5">
             <div class="container">
            <div class="form-horizontal">
              <div class="form-group">
            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtuname" runat="server" Class="form-control" placeholder="Enter your name" Width="300px"></asp:TextBox>
                </div>
             <label class="col-xs-11">Address:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtadd" runat="server" Class="form-control" placeholder="Enter your address" Height="33px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </div>
             <label class="col-xs-11">Landmark:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtlandmark" runat="server" Class="form-control" placeholder="Enter nearest landmark" Width="300px"></asp:TextBox>
                </div>
             <label class="col-xs-11">State:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="TxtState" runat="server" Class="form-control" placeholder="Enter your State" Width="300px"> </asp:TextBox>
                </div>
             <label class="col-xs-11">Pincode:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtpin" runat="server" Class="form-control" placeholder="Enter your pincode" Width="300px"> </asp:TextBox>
                </div>
                   <label class="col-xs-11">Phone number:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtphone" runat="server" Class="form-control" placeholder="Enter your Phone number" Width="300px"></asp:TextBox>
                </div>

              <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="buttonpayment" Class="btn btn-success" runat="server" Text="Continue to Payment" OnClick="buttonpayment_Click" />
             </div>
    </div>
                </div>
        </div></div>
        </div>
    </form>
</body>
</html>
