
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub button1_Click(sender As Object, e As EventArgs) Handles button1.Click
        Dim bookID As String
        bookID = Request.QueryString("ResNo") ' 取得書號
        ' 建立Cookie儲存選購商品
        If Request.Cookies("book") IsNot Nothing Then
            ' 存在, 更新數量
            Dim quantity As Integer = Request.Cookies("book")("Quantity")
            Response.Cookies("book")("ID") = bookID
            Response.Cookies("book")("Quantity") = quantity + TextBox2.Text()
        Else
            ' 不存在, 建立新Cookie
            Response.Cookies("book")("ID") = bookID
            Response.Cookies("book")("Quantity") = TextBox2.Text
        End If
        Response.Cookies("book").Expires = DateAdd("D", 10, Today)
        Response.Redirect("shoppingcart.aspx") ' 轉址至購物車
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session("favorite") = Request.QueryString("ResNo")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("LogInStatus") = "OK" Then
            Button2.Visible = True
            Panel1.Visible = True
        Else
            Button2.Visible = False
            Panel1.Visible = False
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim speaker As String
        speaker = Session("Name")
        Label4.Text = speaker & " : "
        Dim strMsg As String
        strMsg = Label3.Text
        If strMsg <> "" Then
            ' 有聊天訊息  
            UpdateChatMsgs(strMsg)
            PrintChatMsgs()
        End If
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        PrintChatMsgs()
    End Sub
    Sub UpdateChatMsgs(strMsg As String)
        Dim strNewMsg As String
        strNewMsg = "<b>" & Session("Username") & "</b>(" & Now & "):" & strMsg
        ' 確認不是重複的訊息
        If strNewMsg <> Application("Msg9") Then
            Application.Lock()
            ' 更新聊天訊息 
            Application("Msg1") = Application("Msg2")
            Application("Msg2") = Application("Msg3")
            Application("Msg3") = Application("Msg4")
            Application("Msg4") = Application("Msg5")
            Application("Msg5") = Application("Msg6")
            Application("Msg6") = Application("Msg7")
            Application("Msg7") = Application("Msg8")
            Application("Msg8") = Application("Msg9")
            Application("Msg9") = strNewMsg
            Application.UnLock()
        End If
    End Sub
    ' 顯示聊天訊息
    Sub PrintChatMsgs()
        Label3.Text = Application("Msg9") & "<br/>"
        Label3.Text &= Application("Msg8") & "<br/>"
        Label3.Text &= Application("Msg7") & "<br/>"
        Label3.Text &= Application("Msg6") & "<br/>"
        Label3.Text &= Application("Msg5") & "<br/>"
        Label3.Text &= Application("Msg4") & "<br/>"
        Label3.Text &= Application("Msg3") & "<br/>"
        Label3.Text &= Application("Msg2") & "<br/>"
        Label3.Text &= Application("Msg1") & "<br/>"
    End Sub
End Class
