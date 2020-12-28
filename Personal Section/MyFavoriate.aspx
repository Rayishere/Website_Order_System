<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MyFavoriate.aspx.vb" Inherits="MyFavoriate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" Font-Italic="False" Font-Names="微軟正黑體" Font-Size="X-Large" ForeColor="White" Height="50px" Text="我的最愛" Width="500px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ResNo" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="餐廳名字" SortExpression="ID" />
                        <asp:BoundField DataField="ResNo" HeaderText="餐廳號碼" ReadOnly="True" SortExpression="ResNo" />
                        <asp:BoundField DataField="Time" HeaderText="時間" SortExpression="Time" />
                        <asp:BoundField DataField="ResType" HeaderText="類型" SortExpression="ResType" />
                        <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
                        <asp:BoundField DataField="Information" HeaderText="詳細資訊" SortExpression="Information" />
                        <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [餐廳折價券] WHERE ([ResNo] = @ResNo)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ResNo" SessionField="favorite" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

