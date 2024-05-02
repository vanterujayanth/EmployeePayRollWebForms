<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pay_Roll_Form.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 1795px;
            height: 91px;
        }
        .auto-style2 {
            width: 100%;
            height: 389px;
        }
        .auto-style3 {
            height: 134px;
            width: 1003px;
        }
        .auto-style4 {
            height: 129px;
            width: 1003px;
        }
        .auto-style5 {
            height: 81px;
        }
        .auto-style6 {
            height: 129px;
            text-align: right;
        }
        .auto-style7 {
            height: 134px;
            text-align: right;
        }
        .auto-style8 {
            height: 81px;
            text-align: right;
        }
        .auto-style9 {
            height: 81px;
            width: 1003px;
        }
        .auto-style10 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 104px; width: 1801px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-size: x-large; font-weight: bold">
            <h1>LOGIN&nbsp;&nbsp;</h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style2">
            <div class="container">
            <tr>
                <td class="auto-style7" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Employee ID" CssClass="auto-style10"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="XX-Large" Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Id is Required" Font-Size="Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[0-9]{1,}">*Id should be like this &quot;12345&quot;.</asp:RegularExpressionValidator>
                            </strong>
                            </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Employee Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="XX-Large" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please Enter your Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name should start with captial letter and ony letters are acepted" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Z][a-zA-Z\s]+$">*Name should start with captial letter and ony letters are acepted</asp:RegularExpressionValidator>
                </td>
            </tr>
                </div>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button_Register" Text="Create " Width="155px" />
                </td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button_Login" Text="Login" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="Red" BorderWidth="0px" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Home" Width="120px" />
        </div>
    </form>
</body>

</html>
