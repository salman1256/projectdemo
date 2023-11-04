<%@ Page Title="Publisher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="WebAppAzure.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>Publisher Page.<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [Publisher] WHERE [PId] = @original_PId AND [PublisherName] = @original_PublisherName" InsertCommand="INSERT INTO [Publisher] ([PId], [PublisherName]) VALUES (@PId, @PublisherName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [PublisherName] = @PublisherName WHERE [PId] = @original_PId AND [PublisherName] = @original_PublisherName">
                <DeleteParameters>
                    <asp:Parameter Name="original_PId" Type="Int32" />
                    <asp:Parameter Name="original_PublisherName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PId" Type="Int32" />
                    <asp:Parameter Name="PublisherName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PublisherName" Type="String" />
                    <asp:Parameter Name="original_PId" Type="Int32" />
                    <asp:Parameter Name="original_PublisherName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
<p>&nbsp;</p>
        
    </main>
</asp:Content>
