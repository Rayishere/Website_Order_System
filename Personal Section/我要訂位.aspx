<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="我要訂位.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            width: 100%;
        }
        .auto-style7 {
            width: 99px;
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style14 {
            width: 608px;
        }
        .auto-style15 {
            width: 608px;
            height: 384px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [Table]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [name] = @original_name AND [priceLow] = @original_priceLow AND [priceHigh] = @original_priceHigh AND [appointed] = @original_appointed AND (([kind] = @original_kind) OR ([kind] IS NULL AND @original_kind IS NULL)) AND [address] = @original_address AND [introduction] = @original_introduction" InsertCommand="INSERT INTO [Table] ([Id], [name], [priceLow], [priceHigh], [appointed], [kind], [address], [introduction]) VALUES (@Id, @name, @priceLow, @priceHigh, @appointed, @kind, @address, @introduction)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table] SET [name] = @name, [priceLow] = @priceLow, [priceHigh] = @priceHigh, [appointed] = @appointed, [kind] = @kind, [address] = @address, [introduction] = @introduction WHERE [Id] = @original_Id AND [name] = @original_name AND [priceLow] = @original_priceLow AND [priceHigh] = @original_priceHigh AND [appointed] = @original_appointed AND (([kind] = @original_kind) OR ([kind] IS NULL AND @original_kind IS NULL)) AND [address] = @original_address AND [introduction] = @original_introduction">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_priceLow" Type="Int32" />
                                <asp:Parameter Name="original_priceHigh" Type="Int32" />
                                <asp:Parameter Name="original_appointed" Type="Int32" />
                                <asp:Parameter Name="original_kind" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_introduction" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="priceLow" Type="Int32" />
                                <asp:Parameter Name="priceHigh" Type="Int32" />
                                <asp:Parameter Name="appointed" Type="Int32" />
                                <asp:Parameter Name="kind" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="introduction" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="priceLow" Type="Int32" />
                                <asp:Parameter Name="priceHigh" Type="Int32" />
                                <asp:Parameter Name="appointed" Type="Int32" />
                                <asp:Parameter Name="kind" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="introduction" Type="String" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_priceLow" Type="Int32" />
                                <asp:Parameter Name="original_priceHigh" Type="Int32" />
                                <asp:Parameter Name="original_appointed" Type="Int32" />
                                <asp:Parameter Name="original_kind" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_introduction" Type="String" />
                            </UpdateParameters>
</asp:SqlDataSource>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        用餐日期：<br /> 
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" rowspan="4">
                        用餐地點：<br /> 
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="200px" VisibleDate="2015-06-17">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
            <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" rowspan="4">
                        <asp:Image ID="Image2"  runat="server" ImageUrl="~/image/1.jpg"/>
                        <asp:Image ID="Image3"  runat="server" ImageUrl="~/image/2.jpg"  Visible="False"/>
                        <asp:Image ID="Image4"  runat="server" ImageUrl="~/image/3.jpg"  Visible="False"/>
                        <asp:Image ID="Image5"  runat="server" ImageUrl="~/image/4.JPG"  Visible="False"/>
                        <asp:Image ID="Image6"  runat="server" ImageUrl="~/image/5.jpg"  Visible="False"/>
                        <asp:Image ID="Image7"  runat="server" ImageUrl="~/image/6.jpg"  Visible="False"/>
                        <asp:Image ID="Image8"  runat="server" ImageUrl="~/image/7.jpg"  Visible="False"/>
                        <asp:Image ID="Image9"  runat="server" ImageUrl="~/image/8.jpg"  Visible="False"/>
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/image/9.jpg"  Visible="False"/>
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/image/10.jpg" Visible="False"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        用餐人數：<br />
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="100px">
                            <asp:ListItem Value="單人桌">兩人以下</asp:ListItem>
                            <asp:ListItem Value="雙人桌">三到四人</asp:ListItem>
                            <asp:ListItem Value="多人桌">五人以上</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        用餐時間：<br />
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="100px">
                            <asp:ListItem>上午08:00~中午12:00</asp:ListItem>
                            <asp:ListItem>中午12:00~下午18:00</asp:ListItem>
                            <asp:ListItem>下午18:00~晚上22:00</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="XX-Large" Text="送出" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content9" runat="server" contentplaceholderid="ContentPlaceHolder6">
    <div class="auto-style14">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="rest" HeaderText="rest" SortExpression="rest" />
                <asp:BoundField DataField="people" HeaderText="people" SortExpression="people" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            </Columns>
        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [rest] = @original_rest AND [people] = @original_people AND [time] = @original_time" InsertCommand="INSERT INTO [Table] (Id, rest, people, time) VALUES (@Id, @rest, @people, @time)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table] SET [rest] = @rest, [people] = @people, [time] = @time WHERE [Id] = @original_Id AND [rest] = @original_rest AND [people] = @original_people AND [time] = @original_time">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_rest" Type="String" />
                                <asp:Parameter Name="original_people" Type="String" />
                                <asp:Parameter Name="original_time" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="Label1" Name="Id" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="DropDownList5" Name="rest" PropertyName="SelectedItem" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="people" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList3" Name="time" PropertyName="SelectedValue" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="rest" Type="String" />
                                <asp:Parameter Name="people" Type="String" />
                                <asp:Parameter Name="time" Type="String" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_rest" Type="String" />
                                <asp:Parameter Name="original_people" Type="String" />
                                <asp:Parameter Name="original_time" Type="String" />
                            </UpdateParameters>
</asp:SqlDataSource>
    </div>
</asp:Content>


