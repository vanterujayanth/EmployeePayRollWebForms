<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Pay_Roll_Form.Pages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            width: 50%;
        }
        .auto-style1 {
            height: 49px;
            width: 729px;
        }
        .auto-style2 {
            height: 50px;
            width: 554px;
        }
        .auto-style3 {
            height: 51px;
            width: 554px
            
        }
        .auto-style4 {
            height: 52px;
            width: 797px;
            text-align: center;
        }
        .auto-style5 {
            height: 53px;
            width: 554px;
            font-size: large;
        }
        .auto-style6 {
            height: 56px;
            width: 797px;
        }
        .auto-style7 {
            height: 57px;
            width: 797px;
        }
        .auto-style8 {
            height: 58px;
            width: 554px;
        }
        .auto-style9 {
            height: 59px;
            width: 797px;
        }
        .auto-style10 {
            height: 57px;
            width: 554px;
        }
        .auto-style11 {
            width: 554px;
            font-size: large;
        }
        .auto-style12 {
            width: 797px;
        }
        .auto-style13 {
            width: 554px;
            height: 39px;
        }
        .auto-style14 {
            width: 797px;
            height: 39px;
        }
        .auto-style15 {
            width: 554px;
            height: 46px;
        }
        .auto-style16 {
            width: 797px;
            height: 46px;
        }
        .auto-style17 {
            width: 554px;
            height: 44px;
        }
        .auto-style18 {
            width: 797px;
            height: 44px;
        }
        .auto-style19 {
            margin-top: 3px;
            font-size: medium;
        }
        #form1{
        background-color: #f2f2f2;
        padding-left:20px;/* Light gray background color */
    }
        h1{
            padding:10px;
            text-align:center;
            color:orangered;
        }
    
        .auto-style20 {
            margin-top: 1px;
        }
    
        .auto-style21 {
            font-size: medium;
        }
        .auto-style22 {
            width: 59%;
        }
        .auto-style23 {
            font-size: large;
        }
    
    </style>
</head>
<body>
    <div class="container">
        <div class="auto-style22">
            <form id="form1" runat="server">
                <div>
                    <h1 text-align="center" color="red">Employee PayRoll Form</h1>
                </div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label3" runat="server" Text="Name" CssClass="auto-style21" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style7" colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" Width="500px" OnTextChanged="TextBox1_TextChanged" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter your Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name should start with captial letter and ony letters are acepted" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Z][a-zA-Z\s]+$">*Name should start with captial letter and ony letters are acepted</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11"><strong>Profile Image</strong></td>
                        <td class="auto-style7" colspan="2">
                            <asp:RadioButton ID="RadioButton1" runat="server" value="/Assets/rollimg1.png"/>
                            &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/rollimg1.png" Width="45px" />
                            <asp:RadioButton ID="RadioButton2" runat="server"  value="/Assets/rollimg2.png" />
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/rollimg2.png" Width="45px" />
                            <asp:RadioButton ID="RadioButton3" runat="server"  value="/Assets/rollimg4.png" />
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/rollimg4.png" Width="45px" />
                            <asp:RadioButton ID="RadioButton4" runat="server" value="/Assets/rollimg5.png" />
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/rollimg5.png" Width="45px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <strong>
                            <asp:Label ID="Label6" runat="server" Text="Gender" CssClass="auto-style23"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style9" colspan="2">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="200px" Font-Bold="True" Font-Size="Medium">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Gender is Required" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <strong>
                            <asp:Label ID="Label7" runat="server" Text="Department" CssClass="auto-style23"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style14" colspan="2">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="500px" Font-Bold="True" Font-Size="Medium">
                                <asp:ListItem>HR</asp:ListItem>
                                <asp:ListItem>Sales</asp:ListItem>
                                <asp:ListItem>Finance</asp:ListItem>
                                <asp:ListItem>Engineering</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <strong>
                            <asp:Label ID="Label8" runat="server" Text="Salary" CssClass="auto-style23"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style16" colspan="2">
                            <strong>
                            <asp:TextBox ID="TextBox4" runat="server" Width="500px" Font-Size="Medium"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Salary is Required" Font-Size="Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[0-9]{1,}">*Salary should be like this &quot;12345&quot;.</asp:RegularExpressionValidator>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" >
                            <strong>
                            <asp:Label ID="Label9" runat="server" Text="JoiningDate" CssClass="auto-style23"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style18" colspan="2">
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Width="500px" Font-Size="Medium"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Start Date is Required" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Notes</strong></td>
                        <td class="auto-style6" colspan="2">
                            <asp:TextBox ID="TextBox3" runat="server" Height="122px" Width="500px" CssClass="auto-style19"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style12" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style12" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Button3" runat="server" Text="Cancel" ForeColor="White" BackColor="#993333" OnClick="Button3_Click" CssClass="auto-style20" Font-Bold="True" Height="50px" Width="150px" />
                        </td>
                        <td class="auto-style4">
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" BackColor="#6600FF" ForeColor="White" Font-Bold="True" Height="50px" Width="150px" />
                        </td>
                        <%--<td class="auto-style4">
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" Width="105px" />
                        </td>--%>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
