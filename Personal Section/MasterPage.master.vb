
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    ' Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
    ' End Sub

    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Response.Redirect("searchresult.aspx")
    ' End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("LogInStatus") <> "OK" Then
            Label1.Text = "目前尚未登入"
            HyperLink1.Text = "登入"
            HyperLink1.NavigateUrl = "login.aspx"
            HyperLink2.Text = "加入會員"
            HyperLink2.NavigateUrl = "AddNewMember.aspx"
        End If
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        If Session("LogInStatus") IsNot Nothing Then
            HyperLink1.Visible = True
            HyperLink2.Visible = False
            Dim a As String
            a = Session("LogInStatus")
            If a.Equals("OK") Then
                Dim name As String
                name = Session("Name")
                Label1.Text = name & "已經登入"
                HyperLink1.Text = "登出"
                HyperLink1.NavigateUrl = "logout.aspx"
            Else
                Label1.Text = "目前尚未登入"
                HyperLink1.Text = "登入"
                HyperLink1.NavigateUrl = "login.aspx"
            End If
        End If


    End Sub

    Protected Sub TreeView1_SelectedNodeChanged(sender As Object, e As EventArgs) Handles TreeView1.SelectedNodeChanged

    End Sub
End Class

