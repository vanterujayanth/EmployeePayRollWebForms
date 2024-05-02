<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="Pay_Roll_Form.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>EMployee LIst</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            font-weight: normal;
            text-align: center;
            text-decoration: underline;
            color: #FF3300;
            width: 1722px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div class="auto-style2">
            <h1 class="auto-style1"><strong>List Of All Employees</strong></h1>
            <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="LogOut" Width="150px" />
            <div class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" Width="1323px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </div>
        </div>
   <%-- </form>--%>
    <p>
&nbsp;</p>
    <%--   <div>
    <form id="form2" runat="server">
        <div class="auto-style2">
            <h1 class="auto-style1"><strong>List Of All Employees</strong></h1>
            <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Red" BorderStyle="None" BorderWidth="0px" Font-Bold="True" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="LogOut" Width="150px" />
            <tr>
                <td colspan="4" style="text-align:center; padding:20px; padding-left:30px; ">
                    &nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="EmployeeGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="204px">
                        <Columns>
                            <asp:BoundField DataField="EmployeeId" HeaderText="Employee ID" />
                            <asp:BoundField DataField="Name" HeaderText="Employee Name" />
                              <asp:TemplateField  DataField="ProfileImage" HeaderText="Employee Image" Visible="true">
                            <ItemTemplate>
                                
                    <img src='<%# Eval("ProfileImage") %>' alt="Employee Image" />
                
                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:BoundField DataField="ProfileImage" HeaderText="image" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="Department" HeaderText="Department" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" />
                            <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" DataFormatString="{0:MM/dd/yyyy}" />
                            <asp:BoundField DataField="Notes" HeaderText="Notes" />

                        </Columns>
                        <HeaderStyle BackColor="Navy" ForeColor="White" />
                        <RowStyle BackColor="#E6E6FA" ForeColor="#333333" />

                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 341px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            </div>
        
    </form>
    <p>
&nbsp;</p>
       </div>--%>
    
    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1222px">
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
   <asp:Button ID="Button2" runat="server" OnClick="Button1_Click1" Text="Search" />
        </div>
        </form>
</body>
</html>
