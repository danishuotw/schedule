<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Schedule iuput.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-ui-1.8.1.custom.min.js" type="text/javascript"></script>
    <link href="css/ui-lightness/jquery-ui-1.8.1.custom.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #dvStudent
        {
            margin-left: auto;
            margin-right: auto;
        }
        
        input[type=Text]:hover
        {
            background-color: pink;
        }
        
        #rdoGender Label
        {
            padding: 0 6px 0 3px;
        }
        
        #rdoBlood Label
        {
            padding: 0 6px 0 3px;
        }
        
        #message
        {
            width: 740px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5px;
        }
        
        #message li
        {
            display: inline;
            padding: 0 5px 0 5px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#TextBox4").datepicker({ dateFormat: 'yy/mm/dd' });
            $("#TextBox4")[0].onmouseover = function () { $("#TextBox4").css("background-color", "LightBlue"); }
            $("#TextBox4")[0].onmouseout = function () { $("#TextBox4").css("background-color", "white"); }

            $("#content").css("padding-top", "10px");
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="no" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="795px" CellPadding="4" ForeColor="#333333" 
        GridLines="None" HeaderText="行程輸入" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="行程編號" SortExpression="no">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("no") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("no") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="行程名稱" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="行程類型" SortExpression="type">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Text='<%# Bind("type") %>'>
                       <asp:ListItem Value="A">A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem Value="C"></asp:ListItem>
                    </asp:RadioButtonList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="預申請之時間" SortExpression="time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("time") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("time") %>'
                    ClientIDMode="Static"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="地點" SortExpression="place">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("place") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("place") %>'>
                        <asp:ListItem>meeting</asp:ListItem>
                        <asp:ListItem>第一會議聽</asp:ListItem>
                        <asp:ListItem>私人會客室</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("place") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="參與人員" SortExpression="who">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("who") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" Text='<%# Bind("who") %>'>
                        <asp:ListItem>全體員工</asp:ListItem>
                        <asp:ListItem>一級主管</asp:ListItem>
                        <asp:ListItem>二級主管</asp:ListItem>
                        <asp:ListItem>三級主管</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("who") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="備註" SortExpression="des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("des") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("des") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("des") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" 
                InsertText="新增行程" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
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
     <div id="message">
        <asp:Label ID="txtMsg" runat="server" ForeColor="#3333FF"></asp:Label>
    </div>
</asp:Content>

