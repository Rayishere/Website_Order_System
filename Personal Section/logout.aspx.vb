
Partial Class logout
    Inherits System.Web.UI.Page

    
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("login.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("LogInStatus") IsNot Nothing Then
            Session.Abandon()
            Label2.Text = "登出成功........歡迎再次登入!!"
        End If
    End Sub

    

    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub
End Class
