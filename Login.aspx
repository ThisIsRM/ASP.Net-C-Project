<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/custom.css" rel="stylesheet" />
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
     <a class="navbar-brand" href="Default.aspx">&nbsp;<img src="images/Logo.png" alt="WebSite1(1)" style=" height: 100px" /></a></div>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
          </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href ="Adminhome.aspx"><span class="glyphicon glyphicon-print"></span> Admin</a></li>
          <li><a href ="Default.aspx"><span class="glyphicon glyphicon-envelope"></span> Home</a></li>
        <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li class ="active"><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
</nav>  
       <!----Login----->
<div class="center-page1">
        <div class="container">
            <div class="form-horizontal">
                <h2>LOGIN</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2" runat="server" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Txtuname" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" runat="server" CssClass="text-danger" ErrorMessage="Enter username" ControlToValidate="Txtuname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2" runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" CssClass="text-danger" ErrorMessage="Enter password" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BTNLOGIN" CssClass="btn btn-success" runat="server" Text="LOGIN" OnClick="BTNLOGIN_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:HyperLink ID="HyperLinkforget" runat="server" NavigateUrl="~/forgotpassword.aspx">FORGOT PASSWORD?</asp:HyperLink>
                        <div class="form-group">
                            <div class="col-md-2"></div>
                            <div class="col-md-6">
                                 <asp:Label ID="Labelerror" CssClass="text-danger" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                 </div>
            </div>
        </div>
    </div>
</div>
        </form>
</body>
</html>


                
                
           
        
    
   
    