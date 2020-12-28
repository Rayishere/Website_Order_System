<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="修改訂位.aspx.vb" Inherits="修改訂位" %>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="439px">
    <Columns>
        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="刪除" ShowHeader="True" Text="按鈕" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="rest" HeaderText="rest" SortExpression="rest" />
        <asp:BoundField DataField="people" HeaderText="people" SortExpression="people" />
        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)">
    <SelectParameters>
        <asp:SessionParameter Name="Id" SessionField="idd" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>

