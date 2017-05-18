<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
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
    <div>
    
        <div id="heading">
            <span class="auto-style1"><strong>Contact List</strong></span> - Manage your contact list</div>
    
    </div>
        <div>
            <br />
            Contact List:<br />
            <br />
            <asp:ListBox ID="lstContactList" runat="server" Height="128px" Width="608px"></asp:ListBox>
            <br />
            <asp:Button ID="btnSelectAddtional" runat="server" OnClick="Button1_Click" Text="Select Additional Customers" PostBackUrl="~/Customer.aspx" CssClass="button" Width="230px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRemove" runat="server" OnClick="Button3_Click" Text="Remove contact" Width="107px" CssClass="button" />
&nbsp;<asp:Button ID="btnEmpty" runat="server" OnClick="Button2_Click" Text="Empty List" CssClass="button" />
        &nbsp;</div>
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    </form>
        </div>
</body>
</html>
