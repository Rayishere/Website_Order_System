<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="RestaurantDetails.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="58px" Width="400px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="名字" SortExpression="ID" ReadOnly="True" />
        <asp:BoundField DataField="Time" HeaderText="營業時間" SortExpression="Time" />
        <asp:BoundField DataField="ResType" HeaderText="類型" SortExpression="ResType" />
        <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
        <asp:BoundField DataField="Information" HeaderText="詳細資訊" SortExpression="Information" />
        <asp:BoundField DataField="Quantity" HeaderText="位置數量" SortExpression="Quantity" />
        <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="餐廳圖片">
        </asp:ImageField>
    </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [餐廳折價券] WHERE ([ResNo] = @ResNo)">
    <SelectParameters>
        <asp:QueryStringParameter Name="ResNo" QueryStringField="ResNo" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>
<asp:Button ID="Button2" runat="server" Text="加入我的最愛" />
    <br />
    <table class="auto-style1">
        <tr>
            <td style="font-size: medium; font-family: 微軟正黑體; background-color: #FF99FF">留言</td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <asp:Timer ID="Timer1" runat="server">
                        </asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="187px"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="送出訊息" />
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder4">
    &nbsp;購買餐券<asp:TextBox ID="TextBox2" runat="server" Height="17px" style="margin-left: 0px"></asp:TextBox>
&nbsp; 張&nbsp; 
<asp:Button ID="button1" runat="server" Height="27px" Text="加入購物車" Width="96px" />
&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
    &nbsp;&nbsp; 
</asp:Content>


