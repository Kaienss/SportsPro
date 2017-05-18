<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        </style>
</head>
<body>
      <div id="header">
        <ul>
            <li><a href="SportsPro_home.aspx" class="auto-style3">Home</a></li>
            <li><a href="Contact.aspx" class="auto-style3">Customer</a></li>
            <li><a href="survey.aspx" class="auto-style3">Survey</a></li>
            </ul>
  </div>
    <div id="content">
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <strong>Customers</strong> - <span class="auto-style1">Search and view your customer contact information</span></div>
        <div aria-autocomplete="none">
            <br />
            Select a customer:
            <asp:DropDownList ID="ddlCustomerId" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID">
            </asp:DropDownList>
            <br />
            <br />
        </div>
        <div>
            Address: <asp:Label ID="lblAddress" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblState" runat="server"></asp:Label>
            <br />
            <br />
            Phone: <asp:Label ID="lblPhone" runat="server"></asp:Label>
            <br />
            <br />
            Email:
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </div>
        <div>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Contact List" CssClass="button" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Display Contact List" PostBackUrl="~/Contact.aspx" CssClass="button" />
            <br />
            <asp:Label ID="lblExist" runat="server"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDBConnectionString %>" SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers]"></asp:SqlDataSource>
    </form>
    </div>
</body>
</html>
