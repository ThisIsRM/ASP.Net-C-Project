﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FINS AND FEATHERS</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
          <li><a href ="Adminhome.aspx"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
          <li class="active"><a href ="Default.aspx"><span class="glyphicon glyphicon-envelope"></span> Home</a></li>
        <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  
</nav>
  <!---IMAGE SLIDER---->
        <div class="container">
  <h2></h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
         <div class="item active">
            <img src="IMAGE%20SLIDER/chicken.png" alt="Los Angeles" style="width:200%;"/>
         </div>
        <div class="item">
            <img src="IMAGE%20SLIDER/ny.jpg" alt="New York" style="width:100%;"/>
        </div>   
    </div> 
      <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  


    

   
    </form>
    <script src="js/bootstrap.min.js"></script>"
</body>
</html>
