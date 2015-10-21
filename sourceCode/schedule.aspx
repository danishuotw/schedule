<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim Str As String
        '定時在 Label1 中顯示目前伺服器時間
        Label1.Text = Now
        Dim temp As Char
        temp = gridviewdata() ' convert into integer for trimming uncertain space
        Str = temp ' convert into string       
        
        Literal1.Text = "<object classid=clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6 id=WindowsMediaPlayer1>"
        Literal1.Text += "<param name=URL value=images/" & Str & ".mp3>"
        Literal1.Text += "<param name=rate value=1>"
        Literal1.Text += "<param name=balance value=0>"
        Literal1.Text += "<param name=currentPosition value=0>"
        Literal1.Text += "<param name=playCount value=1>"
        Literal1.Text += "<param name=autoStart value=-1>"
        Literal1.Text += "<param name=currentMarker value=0>"
        Literal1.Text += "<param name=volume value=50>"
        Literal1.Text += "<param name=mute value=0>"
        Literal1.Text += "<param name=uiMode value=mini>"
        Literal1.Text += "<param name=fullScreen value=0>"
        Literal1.Text += "</object>"
     
    End Sub
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        '當頁面載入時, 在 Label1 中顯示目前伺服器時間
        Label1.Text = Now
        'Literal1.Text = "<bgsound src=images/1.mp3 Loop=2>"
        '使用bgsound播放背景音效 2 次      
        If Not IsPostBack Then ' 第一次登入網頁
            Literal1.Text = "<object classid=clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6 id=WindowsMediaPlayer1>"
            Literal1.Text += "<param name=URL value=images/A.mp3>"
            Literal1.Text += "<param name=rate value=1>"
            Literal1.Text += "<param name=balance value=0>"
            Literal1.Text += "<param name=currentPosition value=0>"
            Literal1.Text += "<param name=playCount value=1>"
            Literal1.Text += "<param name=autoStart value=-1>"
            Literal1.Text += "<param name=currentMarker value=0>"
            Literal1.Text += "<param name=volume value=50>"
            Literal1.Text += "<param name=mute value=0>"
            Literal1.Text += "<param name=uiMode value=mini>"
            Literal1.Text += "<param name=fullScreen value=0>"
            Literal1.Text += "</object>"
           
        End If
               
    End Sub
    
  
    
    Private Function Leftdays(ByVal o As Object) As String
        Dim dt As DateTime = o
        
        Dim diffday As Long = DateDiff(DateInterval.Day, DateTime.Now, dt) + 1
        
        Return diffday.ToString()
    End Function
    
   
    Private Function gridviewdata() As String
        Dim str As String
        'Get first row, first column from GrisView1
        str = GridView1.Rows(0).Cells(0).Text
            
        Return str
    End Function


      
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ch15-06</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                目前伺服器時間：<asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="10000" 
    ontick="Timer1_Tick">
                </asp:Timer>
                <br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                    AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:BoundField DataField="type" HeaderText="類型" SortExpression="type" />
                        <asp:BoundField DataField="no" HeaderText="編號" SortExpression="no" />
                        <asp:BoundField DataField="time" HeaderText="行程時間" SortExpression="time" />
                        <asp:BoundField DataField="name" HeaderText="行程名稱" SortExpression="name" />
                        <asp:BoundField DataField="place" HeaderText="地點" SortExpression="place" />
                        <asp:BoundField DataField="who" HeaderText="參與人員" SortExpression="who" />
                        <asp:BoundField DataField="comment" HeaderText="說明" 
                            SortExpression="comment" />
                        <asp:TemplateField HeaderText="到期剩餘日數">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Leftdays(Eval("time")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [schedule] WHERE ([time] &gt; @time) ORDER BY [time] ASC, [type]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="time" PropertyName="Text" 
                            Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    
    </div>
    </form>
</body>
</html>

