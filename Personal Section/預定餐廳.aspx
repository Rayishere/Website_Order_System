<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="預定餐廳.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
        <div class="auto-style15">
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/我要訂位.aspx" Text="我要訂位" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" SortExpression="name" HeaderText="name"/>
                    <asp:BoundField DataField="priceLow" SortExpression="priceLow" HeaderText="priceLow"/>
                    <asp:BoundField DataField="priceHigh" SortExpression="priceHigh" HeaderText="priceHigh"/>
                    <asp:BoundField DataField="appointed" SortExpression="appointed" HeaderText="appointed"/>
                    <asp:BoundField DataField="kind" SortExpression="kind" HeaderText="kind"/>
                    <asp:BoundField DataField="address" SortExpression="address" HeaderText="address"/>
                    <asp:BoundField DataField="introduction" SortExpression="introduction" HeaderText="introduction"/>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>




