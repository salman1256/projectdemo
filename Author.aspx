<%@ Page Title="Author" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="WebAppAzure.About" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Author Details.</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="AId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="AId" HeaderText="AId" ReadOnly="True" SortExpression="AId" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [Author] WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName" InsertCommand="INSERT INTO [Author] ([AId], [AuthorName]) VALUES (@AId, @AuthorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [AuthorName] = @AuthorName WHERE [AId] = @original_AId AND [AuthorName] = @original_AuthorName">
            <DeleteParameters>
                <asp:Parameter Name="original_AId" Type="Int32" />
                <asp:Parameter Name="original_AuthorName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AId" Type="Int32" />
                <asp:Parameter Name="AuthorName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="original_AId" Type="Int32" />
                <asp:Parameter Name="original_AuthorName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        
    </main>
</asp:Content>
