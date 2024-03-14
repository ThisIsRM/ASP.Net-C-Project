<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="Adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <h2>WELCOME ADMIN!-------</h2>
            



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
                        <asp:Button ID="Buttonlogin" cssclass="btn btn-success" runat="server" Text="LOGIN" OnClick="Buttonlogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
                    </div>
                </div>
                </div>
            </div>
    </div>


</asp:Content>

