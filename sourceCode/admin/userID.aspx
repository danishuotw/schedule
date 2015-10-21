<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userID.aspx.vb" Inherits="admin_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <script src="../Scripts/jquery-1.4.2.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server" class="body">
    <div id="header">
        <h1 class="style2">
            <strong><em>以行事曆驅動網頁語音之提醒器</em></strong></h1>
    </div>
    <div id="menu" class = "">
         <ul>
            <li class="first"></li><a href="../schedule.aspx">語音頁面</a></li>
            <li><a href="../scheduleQ.aspx">最新行程</a></li>
            <li><a href="../staff data iuput.aspx">員工註冊</a></li>
            <li><a href="../schedule iuput3.aspx">申請行程</a></li>
             <li><a href="admin/userID.aspx">個資管理</a></li>
              <li><a href="admin/admin.aspx">行程管理 </a></li>
            <li>
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </li>
            <li>
                <asp:LoginName ID="LoginName1" runat="server" FormatString="使用者：{0}" />
            </li>
        </ul>
    </div>
    <div id="page" class="style">
        <div id="content" class="style1">
           
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="1" 
                DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" 
                Width="795px" AllowPaging="True">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                CommandName="Delete" 
                                onclientclick="return confirm (&quot;確定要刪除這位員工的資料嗎??&quot;)" Text="刪除" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                        SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" 
                        SortExpression="Birthday" />
                    <asp:BoundField DataField="Blood" HeaderText="Blood" SortExpression="Blood" />
                    <asp:BoundField DataField="Height" HeaderText="Height" 
                        SortExpression="Height" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" 
                        SortExpression="Weight" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                    <asp:BoundField DataField="dep" HeaderText="dep" SortExpression="dep" />
                    <asp:BoundField DataField="pos" HeaderText="pos" SortExpression="pos" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Students] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Students] ([ID], [Name], [Gender], [Birthday], [Blood], [Height], [Weight], [City], [Address], [Tel], [dep], [pos]) VALUES (@ID, @Name, @Gender, @Birthday, @Blood, @Height, @Weight, @City, @Address, @Tel, @dep, @pos)" 
                SelectCommand="SELECT * FROM [Students]" 
                UpdateCommand="UPDATE [Students] SET [Name] = @Name, [Gender] = @Gender, [Birthday] = @Birthday, [Blood] = @Blood, [Height] = @Height, [Weight] = @Weight, [City] = @City, [Address] = @Address, [Tel] = @Tel, [dep] = @dep, [pos] = @pos WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Birthday" />
                    <asp:Parameter Name="Blood" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weight" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Tel" Type="String" />
                    <asp:Parameter Name="dep" Type="String" />
                    <asp:Parameter Name="pos" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Birthday" />
                    <asp:Parameter Name="Blood" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weight" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Tel" Type="String" />
                    <asp:Parameter Name="dep" Type="String" />
                    <asp:Parameter Name="pos" Type="String" />
                    <asp:Parameter Name="ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
        </div>
    </div>
    <div id="footer">
        <p>
            &nbsp;</p>
    </div>
    </form>
    </body>
</html>