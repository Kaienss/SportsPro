<%@ Page Language="C#" AutoEventWireup="true" CodeFile="survey.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 167px;
        }
        .auto-style3 {
            width: 216px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            width: 164px;
            height: 20px;
        }
        .auto-style6 {
            font-weight: normal;
        }
        .auto-style12 {
            width: 235px;
        }
        .auto-style13 {
            width: 157px;
        }
        #form1 {
            margin-left: 0px;
        }
        .auto-style18 {
            width: 119px;
            font-weight: 700;
        }
        .auto-style19 {
            width: 12px;
            font-weight: 700;
        }
        .auto-style20 {
            width: 178px;
        }
        .auto-style22 {
            width: 135px;
        }
        .auto-style23 {
            width: 162px;
        }
        .col-md-2 {
            font-weight: 700;
        }
        .auto-style24 {
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
    <div class="survey">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h1>Suvery&nbsp; ----</h1>
                </td>
                <td>
                    <h3>collect feedback from customers</h3>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>Enter your Customer ID:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Get incidents" OnClick="Button1_Click" CssClass="button" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please must input numbers!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please input positive numbers(0-9)!" ForeColor="#FF3300" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblnoincident" runat="server" ForeColor="Red"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="143px" Width="680px" CssClass="center"></asp:ListBox>
        <table class="auto-style1">
            <tr>
                <td>
                    <h3 class="auto-style6">&nbsp;</h3>
                    <h3 class="auto-style6"><strong>Please rate this incident by rhe following categories:</strong></h3><br />
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style22">
                                <asp:Label ID="lblResponseTime" runat="server" CssClass="col-md-2" Enabled="False" Text="Response time:"></asp:Label>
                            </td>
                        
                            <td class="auto-style23">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="font-size: small">
                                    <asp:ListItem Value="0">Not Satified:</asp:ListItem>
                                    <asp:ListItem Value="1">Somewhat Satified:</asp:ListItem>
                                    <asp:ListItem Value="2">Satisfied:</asp:ListItem>
                                    <asp:ListItem Value="3">Compeletly Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                           
                            <td class="auto-style18">
                                <asp:Label ID="lblEfficiency" runat="server" CssClass="col-md-2" Enabled="False" Text="Technician efficiency:"></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" style="font-size: small">
                                    <asp:ListItem Value="0">Not Satified:</asp:ListItem>
                                    <asp:ListItem Value="1">Somewhat Satified:</asp:ListItem>
                                    <asp:ListItem Value="2">Satisfied:</asp:ListItem>
                                    <asp:ListItem Value="3">Compeletly Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                                </td>
                            <td class="auto-style19">
                                <asp:Label ID="lblResolution" runat="server" CssClass="col-md-2" Enabled="False" Text="Problem resolution:"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" style="font-size: small; margin-left: 0px;">
                                    <asp:ListItem Value="0">Not Satified:</asp:ListItem>
                                    <asp:ListItem Value="1">Somewhat Satified:</asp:ListItem>
                                    <asp:ListItem Value="2">Satisfied:</asp:ListItem>
                                    <asp:ListItem Value="3">Compeletly Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                                </td>
                        </tr>
                        </table>
                        </h3>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>Addition comments:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="130px" Width="382px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <h4>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        Please contact me to discuss this incident</h4>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">
                                <h4>
                                    <asp:RadioButton ID="RadioButton13" runat="server" />
                                    Contact by email</h4>
                            </td>
                            <td>
                                <h4>
                                    <asp:RadioButton ID="RadioButton14" runat="server" />
                                    Contact by phone</h4>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" CssClass="button" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportDBConnectionString %>" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
    </form>
        </div>
</body>
</html>
