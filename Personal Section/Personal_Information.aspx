<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Personal_Information.aspx.vb" Inherits="Personal_Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="background-color: #00FF00; font-family: 微軟正黑體; font-size: medium">個人資料</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" Font-Size="Medium" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                        <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" />
                        <asp:BoundField DataField="email" HeaderText="電子郵件" SortExpression="email" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Member] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Member] ([Id], [name], [password], [email]) VALUES (@Id, @name, @password, @email)" SelectCommand="SELECT * FROM [Member] WHERE ([Id] = @Id2)" UpdateCommand="UPDATE [Member] SET [name] = @name, [password] = @password, [email] = @email WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Id2" SessionField="Id" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

