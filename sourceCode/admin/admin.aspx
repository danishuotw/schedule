<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin_Default" %>

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
             <li><a href="admin/userID.aspx">帳號維護</a></li>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="no" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="795px">
                <AlternatingRowStyle BackColor="White" />
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
                                CommandName="Delete" onclientclick="return confirm (&quot;確定要刪除此行程嗎??&quot;)" 
                                Text="刪除" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="no" HeaderText="no" ReadOnly="True" 
                        SortExpression="no" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                    <asp:BoundField DataField="who" HeaderText="who" SortExpression="who" />
                    <asp:BoundField DataField="des" HeaderText="des" SortExpression="des" />
                    <asp:BoundField DataField="comment" HeaderText="comment" 
                        SortExpression="comment" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [schedule] WHERE [no] = @no" 
                InsertCommand="INSERT INTO [schedule] ([no], [name], [type], [time], [place], [who], [des], [comment]) VALUES (@no, @name, @type, @time, @place, @who, @des, @comment)" 
                SelectCommand="SELECT * FROM [schedule]" 
                UpdateCommand="UPDATE [schedule] SET [name] = @name, [type] = @type, [time] = @time, [place] = @place, [who] = @who, [des] = @des, [comment] = @comment WHERE [no] = @no">
                <DeleteParameters>
                    <asp:Parameter Name="no" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="no" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="time" Type="DateTime" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="who" Type="String" />
                    <asp:Parameter Name="des" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="time" Type="DateTime" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="who" Type="String" />
                    <asp:Parameter Name="des" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="no" Type="String" />
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