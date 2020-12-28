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

        connString = "Data Source=(LocalDB)\v11.0;" &
                    "AttachDbFilename=" &
                    Server.MapPath("APP_Data\Database.mdf") &
                    ";Integrated Security=True "

        conn = New SqlConnection(connString)

        Try
            conn.Open()
            Dim strSql = "UPDATE Member SET column2 ='" & TextBox2.Text & "' ,column3 = '" & TextBox3.Text & "' ,column4 = '" & TextBox4.Text & ""
            cmd = New SqlCommand(strSql, conn)
            cmd.Cancel()

        Catch ex As Exception
            Response.Write("資料庫連接錯誤")
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Status") IsNot Nothing Then
            Dim name, email As String
            name = Session("name").Value
            email = Session("email").Value

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
                Dim strSql = "Select * from Member Where name ='" & name & "' and email = '" & email & "'"
                cmd = New SqlCommand(strSql, conn)
                row = cmd.ExecuteReader()
                If row.HasRows Then
                    Do While row.Read()
                        Label1.Text = row("Id")
                        TextBox2.Text = row("name")
                        TextBox3.Text = row("password")
                        TextBox4.Text = row("email")
                    Loop
                    cmd.Cancel()
                    row.Close()
                End If
            Catch ex As Exception
                Response.Write("資料庫連接錯誤")
            End Try
        Else
            Response.Redirect("login.aspx")

        End If
        
    End Sub
End Class
