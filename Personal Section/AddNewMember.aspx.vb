Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim strDbCon, strSQL As String
        Dim count As Integer
        strDbCon = "Data Source=(LocalDB)\v11.0;" &
             "AttachDbFilename=" &
            Server.MapPath("App_Data\Database.mdf") &
            ";Integrated Security=True"
        If Page.IsPostBack Then
            strSQL = "INSERT INTO Member (Id,name" &
                     " , password, email) VALUES ('"
            strSQL &= TextBox6.Text & "',N'"
            strSQL &= TextBox2.Text & "','"
            strSQL &= TextBox3.Text & "','"
            strSQL &= TextBox5.Text + "')"
            objCon = New SqlConnection(strDbCon)
            objCon.Open()
            objCmd = New SqlCommand(strSQL, objCon)
            count = objCmd.ExecuteNonQuery()
            If count = 1 Then
                Label1.Text = "新增會員成功 :"
            Else
                Label1.Text = "錯誤:新增會員失敗!"
            End If
            objCon.Close()
        End If
    End Sub
End Class
