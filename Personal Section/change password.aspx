<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="change password.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            height: 20px;
            width: 75px;
        }
        .auto-style12 {
            width: 75px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder5">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/images/Shopping_Cart.jpg" Width="30px" />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/images/Person.png" Width="41px" />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="37px" ImageUrl="~/images/Question.png" Width="35px" />
                    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
        更改個人資料<table class="auto-style1">
            <tr>
                <td class="auto-style11">帳號</td>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">姓名</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">密碼</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">電子郵件</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>





