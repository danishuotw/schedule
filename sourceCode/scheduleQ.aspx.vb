
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '判斷是否身份通過驗證
        If User.Identity.IsAuthenticated = False Then
            '若未通過驗證，則導向Login頁面
            FormsAuthentication.RedirectToLoginPage()
        Else
            If Not Session("Role") = "Admin" Then

            End If
        End If
    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
        If Not Session("Role") <> "admin" Then
            e.Cancel = True
        End If
    End Sub
End Class
