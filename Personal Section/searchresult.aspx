<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="searchresult.aspx.vb" Inherits="searchresult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ResNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="293px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="餐聽名字" SortExpression="ID" />
        <asp:BoundField DataField="Time" HeaderText="時間" SortExpression="Time" />
        <asp:BoundField DataField="ResType" HeaderText="類型" SortExpression="ResType" />
        <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
        <asp:BoundField DataField="Information" HeaderText="資訊" SortExpression="Information" />
        <asp:BoundField DataField="Quantity" HeaderText="座位數量" SortExpression="Quantity" />
        <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="圖片">
        </asp:ImageField>
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [餐廳折價券] WHERE ([ID] = @ID2)">
    <SelectParameters>
        <asp:SessionParameter Name="ID2" SessionField="result" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>

