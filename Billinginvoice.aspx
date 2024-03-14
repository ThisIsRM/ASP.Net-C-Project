<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Billinginvoice.aspx.cs" Inherits="Billinginvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div>
            <div style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Booked Appointment Services Bill" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br />
                <br />
            </div>
            <div style="text-align: left">
                <asp:Label ID="Label2" runat="server" Text="Automatically Generated Invoice :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br />
                <br />
            </div>
            <div style="text-align: left">
                Order ID:
    <asp:Label ID="Label3" runat="server" Text="123QWERTY456 "></asp:Label>
                <br />
                <br />
            </div>
            <div>
                <asp:Button ID="Button1" runat="server" BackColor="#00CC00" Height="60px" Text="Download Invoice" Width="191px" Font-Bold="True" OnClick="Button1_Click" />
                <br />
                <br />
            </div>
            <asp:Panel ID="Panel1" runat="server" Width="1290px">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style1" colspan="2" style="text-align: center">
                            <br />
                            ORDER INVOICE
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            Order No :
                    <asp:Label ID="Label4" runat="server" Text="123QWERTY456"></asp:Label>
                            &nbsp;<br />
                            <br />
                            Order Date :
                            <asp:Label ID="Label5" runat="server" Text="23-03-2023"></asp:Label>
                            &nbsp;<br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 700px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Services Reserved : "></asp:Label><br />
                            <br />
                            <strong>Sea Foods, Chicken Variety</strong><br />
                        </td>
                        <td><strong>Shop Address :</strong>
                            <br />
                            <br />
                            FINS AND FEATHERS</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridView1" runat="server" Height="311px" Width="1172px" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Prod_ID" HeaderText="Product ID">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Prod_name" HeaderText="Product Name">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Prod_Qty" HeaderText="Product Quantity">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="total" HeaderText="total">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left">
                            <br />
                            Grand Total :
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <br />
                            Declaration : Copyright © Policies: Policy | Terms of use | Security | Privacy | Infringement © 2007-2023 Fins and Feathers.com<br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
</asp:Content>

