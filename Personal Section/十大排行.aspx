<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="十大排行.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
        <div class="auto-style14">
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/我要訂位.aspx" Text="我要訂位" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="345px">
                <Columns>
                    <asp:BoundField DataField="name" SortExpression="name" HeaderText="name"/>
                    <asp:BoundField DataField="appointed" SortExpression="appointed" HeaderText="appointed"/>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT [name], [appointed] FROM [Table] ORDER BY [appointed] DESC" OldValuesParameterFormatString="original_{0}">
        </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>

<asp:Content ID="Content8" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
            text-align: left;
        }
    </style>
</asp:Content>


