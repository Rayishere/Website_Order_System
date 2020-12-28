<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            width: 68px;
        }
        .auto-style12 {
            height: 20px;
            width: 68px;
        }
    .auto-style14 {
        width: 53px;
        height: 20px;
    }
    .auto-style15 {
        height: 31px;
        width: 53px;
    }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
        會員登入</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style14">帳號</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">密碼</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="登入" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forget password.aspx">忘記密碼</asp:HyperLink>
                <asp:Label ID="Label_LoginStatus" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>





