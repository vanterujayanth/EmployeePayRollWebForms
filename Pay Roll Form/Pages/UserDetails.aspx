<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Pay_Roll_Form.Pages.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>UserDetails</title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .button{
            display:flex;
            justify-content:flex-end;
            padding-right: 120px;
            padding-top:50px;
        }
        .button1{
            display:flex;
            justify-content:start;
            padding-left: 120px;
            padding-top: 50px;
        }
    
    
        .auto-style1 {
            width: 1736px;
            text-align: right;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
            margin-right: 50px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" OnClick="Button1_Click" Text="Logout" BorderWidth="0px" Font-Bold="True" Height="51px" Width="150px" CssClass="auto-style3" />
            
            </div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="1195px" BackColor="LightGoldenrodYellow" BorderWidth="1px" Font-Bold="True" BorderColor="Tan" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            
        

      
       
         <br />
         <br />
            
            <asp:Button ID="Button2" runat="server" Text="Edit" BackColor="#FF9933" ForeColor="#663300" OnClick="Button2_Click" Width="151px" BorderStyle="Groove" BorderWidth="0px" Font-Bold="True" Height="50px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="Red" BorderStyle="None" BorderWidth="0px" CssClass="auto-style2" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Delete" Width="150px" />
            <br />
            
        

      
       
    </form>
</body>
</html>
