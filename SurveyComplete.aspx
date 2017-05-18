<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-decoration: none;
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
    
        <asp:Label ID="lblsurvey" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to survey" CssClass="button" />
    </form>
        </div>
</body>
</html>
