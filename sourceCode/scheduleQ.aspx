<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="scheduleQ.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="no" DataSourceID="SqlDataSource1" Width="795px" 
        AllowPaging="True" AllowSorting="True" ForeColor="#333333" 
        GridLines="None" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
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
    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
</asp:Content>

