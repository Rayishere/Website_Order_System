Imports System.Data.SqlClient
Imports System
Imports System.Web.Configuration
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim connString As String
        Dim row As SqlDataReader = Nothing
        connString = "Data Source=(LocalDB)\v11.0;" &
                    "AttachDbFilename=" &
                    Server.MapPath("APP_Data\Database.mdf") &
                    ";Integrated Security=True "

        conn = New SqlConnection(connString)

        Try
            conn.Open()
            Dim strSql = "Select * from Member Where Id ='" & TextBox2.Text & "' and password = '" & TextBox3.Text & "'"
            cmd = New SqlCommand(strSql, conn)
            row = cmd.ExecuteReader()
            If row.HasRows Then
                row.Read()
                Label_LoginStatus.Text = "OK!"
                Session("Id") = row.Item("Id").ToString
                Session("Name") = row.Item("name").ToString
                Session("LogInStatus") = "OK"
            Else
                Label_LoginStatus.Text = "Fail!"
            End If
            cmd.Cancel()
            row.Close()

        Catch ex As Exception
            Response.Write("資料庫連接錯誤")
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
