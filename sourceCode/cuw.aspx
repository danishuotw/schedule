<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="cuw.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #content
        {
            height: 450px !important;
        }

        #content Table
        {
            margin-left: auto;
            margin-right: auto;
            margin-top:25px;
            border: 1px solid blue;
            background-color: White;
        }
        
        input[type=text]
        {
            width: 100px;
        }
        
        input[type=text]:hover
        {
            background-color: pink;
        }
        
        input[type=password]
        {
            width: 100px;
        }
        
        input[type=password]:hover
        {
            background-color: Pink;
        }
    </style>
     <script type="text/javascript">

         $(function () {
             //讀取Page內容的高度
             var x = $("#page").height();
             //讀取Login控制項的高度
             var y = $("#content Table").height();
             //計算Offset
             var offsetTop = (x - y) / 2 - 30;
             //設定Login控制項Offset位移
             $("#content Table").css("margin-top", offsetTop);
         })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" 
        BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em">
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
    </asp:CreateUserWizard>
</asp:Content>

