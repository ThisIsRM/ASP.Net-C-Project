<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>SignUp</title>
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
          <li><a href ="Default.aspx"><span class="glyphicon glyphicon-envelope"></span> Home</a></li>
        <li class="active"><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
        </nav>
    
<!---sign up page-->
        <br />

        <h2>WELCOME TO FINS AND FEATHERS</h2>
       
        <div class="center-page">
             
            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtuname" runat="server" Class="form-control" placeholder="Enter your name"> </asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtuname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="Enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                 <asp:TextBox ID="Txtemail" runat="server" Class="form-control" placeholder="Enter your email"> </asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
             <label class="col-xs-11">Phone_No:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="txtno" runat="server" Class="form-control" placeholder="Enter your phone_no"> </asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtno" ErrorMessage="Enter valid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                 
            </div>
             <label class="col-xs-11">Address:</label>
            <div class="col-xs-11">
                 <asp:TextBox ID="Txtadd" runat="server" Class="form-control" placeholder="Enter your address"> </asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtadd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
            <label class="col-xs-11">Password:</label>
             <div class="col-xs-11">
                 <asp:TextBox ID="Txtpassword" runat="server" Class="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
            <label class="col-xs-11">Confirm password:</label>
             <div class="col-xs-11">
                 <asp:TextBox ID="txtconpassword" runat="server" Class="form-control" placeholder="confirm your password" TextMode="Password"></asp:TextBox>
                 
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpassword" ControlToValidate="txtconpassword" ErrorMessage="Missmatch" ForeColor="Red"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtconpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </div>
            <label class="col-xs-11"></label>
             <div class="col-xs-11">
                 <asp:Button ID="buttonsuccess" Class="btn btn-success" runat="server" Text="REGISTER" OnClick="buttonsuccess_Click" />
                 
                 <asp:Label ID="LBLMSG" runat="server" Text="Label" Enabled="False"></asp:Label>
                 
            </div>

<!--FOOTER --->
            <hr />
            <footer class="footer-pos">
                <div class="container">
                    <p class="pull-right"><a href="#">BACK TO TOP</a></p>
                    <p>&copy;POWERED BY ORDERZ &middot; <a href="Default.aspx">Home</a>&middot;<a href="#"> About</a>&middot</p>
                </div>
            </footer>

        </div>

    
    </form>
</body>
</html>
