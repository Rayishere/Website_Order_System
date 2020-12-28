<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PersonalSec.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 282px;
        height: 264px;
    }
        .auto-style8 {
        width: 122px;
    }
        .auto-style9 {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style8">
            <asp:ImageButton ID="ImageButton5" runat="server" Height="150px" ImageUrl="~/images/Untitled.jpg" ToolTip="進行確認/修改餐廳" Width="160px" PostBackUrl="~/修改訂位.aspx" />
        </td>
        <td class="auto-style9">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="150px" ImageUrl="~/images/Untitled4.jpg" ToolTip="進入個人資料頁面更改" Width="160px" PostBackUrl="~/Personal_Information.aspx" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="150px" ImageUrl="~/images/Untitled7.jpg" Width="160px" ToolTip="查看目前的優惠券" PostBackUrl="~/shoppingcart.aspx" />
        </td>
        <td class="auto-style9">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" ImageUrl="~/images/Untitled6.jpg" Width="160px" ToolTip="我最愛的餐廳" PostBackUrl="~/MyFavoriate.aspx" />
        </td>
    </tr>
</table>
</asp:Content>

