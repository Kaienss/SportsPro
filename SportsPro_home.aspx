<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SportsPro_home.aspx.cs" Inherits="SportsPro_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: #FFFFFF" class=".content">
    <div id="header">
        <ul>
            <li><a href="SportsPro_home.aspx" class="auto-style3">Home</a></li>
            <li><a href="Contact.aspx" class="auto-style3">Customer</a></li>
            <li><a href="survey.aspx" class="auto-style3">Survey</a></li>
            </ul>
  </div>
    <div id="content">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Welcome to SportsPro Support Portal</strong></div>
        <div style="padding: 15px 10px 5px 10px; margin: 15px 10px 5px 10px">
            <strong>Getting Started</strong><br />
            Go to
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Customer.aspx">Customer</asp:LinkButton>
&nbsp;section to search for your customer information.</div>
        <div style="padding: 15px 10px 5px 10px; margin: 15px 10px 5px 10px">
            <strong>What do you think about our service?</strong><br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Survey.aspx">Go to Survey</asp:LinkButton>
&nbsp;to Provide your feedback for any support we have provided to you recently.<br />
        
        </div>
        <div>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                <strong>Group:</strong>
            </p>
            <p class="auto-style2">
                Tiande Xu 100916438</p>
            <p class="auto-style2">
                Qidong Yang 100960657</p>
        </div>
    </form>
    </div>
</body>
</html>
