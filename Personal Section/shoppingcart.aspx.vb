
Partial Class shoppingcart
    Inherits System.Web.UI.Page
    Private total As Integer = 0
    Private hasItem As Boolean = False
    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        ' 宣告WHERE子句的IN條件
        Dim where As String = "WHERE [ResNo] IN ("
        Dim isFirst As Boolean = True
        ' 取出所有Cookie
        For Each bookItem As String In Request.Cookies
            If bookItem.StartsWith("book") Then
                ' 是否是購物車的Cookie
                If isFirst Then  ' 第1次
                    where &= "'" & Request.Cookies(bookItem)("ID") & "'"
                    isFirst = False
                Else
                    where &= ", '" & Request.Cookies(bookItem)("ID") & "'"
                End If
                hasItem = True
            End If
        Next
        where &= ")" ' 完成WHERE子句
        ' 更改資料來源控制項的SELECT指令
        If hasItem Then
            SqlDataSource1.SelectCommand &= where
        Else
            SqlDataSource1.SelectCommand &= "WHERE [ResNo] IN ('0000')"
        End If
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim pos As Integer
        Dim bookID As String
        If e.CommandName = "Delet" Then
            pos = CInt(e.CommandArgument)  ' 哪一列圖書
            ' 取得書號
            bookID = GridView1.DataKeys(pos).Value.ToString()
            ' 刪除Cookie
            Response.Cookies(RTrim("book")).Expires = DateAdd("D", -365, Today)
            Response.Redirect("shoppingcart.aspx")
        End If
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        Dim subtotal As Integer
        ' 檢查是否是資料列
        If e.Row.RowType = DataControlRowType.DataRow And hasItem Then
            ' 指定數量
            e.Row.Cells(4).Text = Request.Cookies("book")("Quantity")
            subtotal = (e.Row.Cells(3).Text * e.Row.Cells(4).Text)
            total += subtotal
            e.Row.Cells(5).Text = subtotal.ToString("c")
        End If
        If e.Row.RowType = DataControlRowType.Footer And hasItem Then
            e.Row.Cells(2).Text = "訂單總金額:"
            e.Row.Cells(5).Text = (total / 2).ToString("c")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
