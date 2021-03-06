﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PasswoedR.aspx.vb" Inherits="_Default" %>

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
            margin-top:150px;
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
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
    Font-Names="Verdana" Font-Size="0.8em" RenderOuterTable="False">
        <SubmitButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:PasswordRecovery>
</asp:Content>

