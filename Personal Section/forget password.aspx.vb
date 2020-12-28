Imports System.Data.SqlClient
Imports System
Imports System.Web.Configuration
Imports System.Data
Imports System.Net.Mail
Imports System.Net


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

        ' Try
        conn.Open()
        Dim strSql = "Select * from Member Where Id ='" & TextBox2.Text & "' and email = '" & TextBox3.Text & "'"
        cmd = New SqlCommand(strSql, conn)
        row = cmd.ExecuteReader()
        If row.HasRows Then
            Do While row.Read()
                Dim mymail As MailMessage = New MailMessage()
                mymail.From = New MailAddress("b0244123@stmail.cgu.edu.tw")
                mymail.To.Add(New MailAddress(TextBox3.Text))
                mymail.Priority = MailPriority.Normal
                mymail.Subject = "[會員密碼通知信]"
                mymail.Body = "您的密碼是： " & row("password")

                Dim smtpServer As New SmtpClient()
                smtpServer.Host = "stmail.cgu.edu.tw"
                Dim myCache As CredentialCache = New CredentialCache()
                myCache.Add("stmail.cgu.edu.tw", 25, "plain",
                        New NetworkCredential("B0244123", "Sunny831024"))
                smtpServer.Credentials = myCache
                smtpServer.Send(mymail)
                Label1.Text = "電子郵件已寄出!"
            Loop
        Else
            Label1.Text = "帳號或電子郵件有誤"
        End If
        cmd.Cancel()
        row.Close()

        'Catch ex As Exception
        'Response.Write("資料庫連接錯誤")
        'End Try
    End Sub
End Class
