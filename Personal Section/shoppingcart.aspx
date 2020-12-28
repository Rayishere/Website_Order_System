<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="shoppingcart.aspx.vb" Inherits="shoppingcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ResNo" DataSourceID="SqlDataSource1" ShowFooter="True" Height="304px" Width="513px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Delet" HeaderText="刪除" Text="刪除" />
            <asp:BoundField DataField="ID" HeaderText="餐廳名字" SortExpression="ID" />
            <asp:BoundField DataField="ResNo" HeaderText="餐廳號碼" SortExpression="ResNo" ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
            <asp:TemplateField HeaderText="數量"></asp:TemplateField>
            <asp:TemplateField HeaderText="價格"></asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [ResNo], [Price] FROM [餐廳折價券]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <table class="auto-style1">
        <tr>
            <td style="font-family: 微軟正黑體; background-color: #FF00FF; color: #FFFFFF; font-size: xx-large">購物車</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


