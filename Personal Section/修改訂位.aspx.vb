
Partial Class 修改訂位
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim idd As String
        idd = Session("Id")
    End Sub
End Class
