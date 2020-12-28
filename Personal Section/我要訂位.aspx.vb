Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim w As String, count As Integer = 1
    Dim idd As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("LogInStatus") = "OK" Then
            idd = Session("Id")
        Else
            Response.Redirect("login.aspx")
        End If
        If Calendar1.TodaysDate.DayOfWeek = 0 Then
            w = " 星期日 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 1 Then
            w = " 星期一 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 2 Then
            w = " 星期二 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 3 Then
            w = " 星期三 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 4 Then
            w = " 星期四 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 5 Then
            w = " 星期五 "
        ElseIf Calendar1.TodaysDate.DayOfWeek = 6 Then
            w = " 星期六 "
        End If
        Label1.Text = Calendar1.TodaysDate & "</br>" & w
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        If Calendar1.SelectedDate.DayOfWeek = 0 Then
            w = " 星期日 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 1 Then
            w = " 星期一 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 2 Then
            w = " 星期二 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 3 Then
            w = " 星期三 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 4 Then
            w = " 星期四 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 5 Then
            w = " 星期五 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 6 Then
            w = " 星期六 "
        End If
        If Calendar1.SelectedDate.Day Then
            Label1.Text = Calendar1.SelectedDate & "</br>" & w
        End If
    End Sub

    Protected Sub DropDownList5_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList5.SelectedIndexChanged
        If DropDownList5.SelectedValue = 1 Then
            Image2.Visible = True
        Else
            Image2.Visible = False
        End If
        If DropDownList5.SelectedValue = 2 Then
            Image3.Visible = True
        Else
            Image3.Visible = False
        End If
        If DropDownList5.SelectedValue = 3 Then
            Image4.Visible = True
        Else
            Image4.Visible = False
        End If
        If DropDownList5.SelectedValue = 4 Then
            Image5.Visible = True
        Else
            Image5.Visible = False
        End If
        If DropDownList5.SelectedValue = 5 Then
            Image6.Visible = True
        Else
            Image6.Visible = False
        End If
        If DropDownList5.SelectedValue = 6 Then
            Image7.Visible = True
        Else
            Image7.Visible = False
        End If

        If DropDownList5.SelectedValue = 7 Then
            Image8.Visible = True
        Else
            Image8.Visible = False
        End If
        If DropDownList5.SelectedValue = 8 Then
            Image9.Visible = True
        Else
            Image9.Visible = False
        End If
        If DropDownList5.SelectedValue = 9 Then
            Image10.Visible = True
        Else
            Image10.Visible = False
        End If
        If DropDownList5.SelectedValue = 10 Then
            Image11.Visible = True
        Else
            Image11.Visible = False
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Calendar1.SelectedDate.DayOfWeek = 0 Then
            w = " 星期日 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 1 Then
            w = " 星期一 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 2 Then
            w = " 星期二 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 3 Then
            w = " 星期三 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 4 Then
            w = " 星期四 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 5 Then
            w = " 星期五 "
        ElseIf Calendar1.SelectedDate.DayOfWeek = 6 Then
            w = " 星期六 "
        End If
        If Calendar1.SelectedDate > Calendar1.TodaysDate Then
            Dim objCon As New SqlConnection
            Dim objCmd As SqlCommand
            Dim strDbCon, strSQL As String
            Dim count As Integer
            strDbCon = "Data Source=(LocalDB)\v11.0;" &
                 "AttachDbFilename=" &
                Server.MapPath("App_Data\reserve.mdf") &
                ";Integrated Security=True"
            'strSQL = "INSERT INTO [Table] (Id, rest, people, time) VALUES('" Id & "','"& Calendar1.SelectedDate & "','" & Calendar1.SelectedDate & "','" & Calendar1.SelectedDate & "','" & Calendar1.SelectedDate & "')")
            strSQL = "INSERT INTO [Table] (Id, rest" &
                     " , people, time) VALUES ('"
            strSQL &= idd & "', N'"
            strSQL &= DropDownList2.SelectedValue.ToString & "', N'"
            strSQL &= DropDownList3.SelectedValue.ToString & "', '"
            strSQL &= DropDownList5.SelectedValue.ToString + "')"
            objCon = New SqlConnection(strDbCon)
            objCon.Open()
            objCmd = New SqlCommand(strSQL, objCon)
            objCmd.ExecuteNonQuery()
            'SqlDataSource2.DataBind()
            Label4.Text = "預定成功！您的用餐日期為" & Calendar1.SelectedDate & w & "</br>" & DropDownList3.SelectedValue
            Label4.Text &= "，座位：" & DropDownList2.SelectedValue & "</br>地點：" & DropDownList5.SelectedItem.ToString
            objCon.Close()
            Response.Redirect("修改訂位.aspx")
        Else
            Label4.Text = "很抱歉！您的用餐日期不能為今天以前的日期！"

        End If
    End Sub
End Class
