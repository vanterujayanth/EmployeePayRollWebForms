<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDetails.aspx.cs" Inherits="Pay_Roll_Form.Pages.SearchDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Search Details</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            height: 97px;
            width: 1785px;
            font-size: large;
            margin-top: 80px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            width: 99%;
            height: 308px;
            margin-top: 88px;
        }
        .auto-style6 {
            height: 83px;
            }
        .auto-style8 {
            height: 83px;
            width: 526px;
            text-align: right;
        }
        .auto-style9 {
            height: 83px;
            width: 527px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 502px; width: 1797px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
             <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1788px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
             &nbsp;&nbsp;&nbsp;
             <br />
             <h1 style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; background-color: #00FFFF; color: #000000">SEARCH THE DETAILS&nbsp; OF EMPLOYEE</h1>
             <div class="auto-style2">
                 <strong><span class="auto-style3">Enter the Id </span>&nbsp; </strong>
<%--<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Font-Size="X-Large" Height="50px" Width="200px"></asp:TextBox>--%>
&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Width="500px" Font-Size="Medium" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Start Date is Required" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                 <br />
                 <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="500px" Font-Size="Medium" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Start Date is Required" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:Button ID="Button2" runat="server" OnClick="Button1_Click1" Text="Search" BackColor="#0099FF" BorderColor="White" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="White" Height="50px" Width="150px" />
                 <br />
             </div>
        </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="Red" BorderWidth="0px" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="LogOut" Height="36px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button5" runat="server" BackColor="#0099FF" BorderColor="#0099FF" BorderStyle="None" BorderWidth="0px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="36px" OnClick="Button5_Click" Text="Login" Width="100px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" BackColor="Green" BorderColor="Green" BorderStyle="None" BorderWidth="0px" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Create" Height="36px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
