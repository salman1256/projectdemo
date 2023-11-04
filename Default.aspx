<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppAzure._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Books </h1>
          
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
              
                <asp:GridView ID="GvBooks" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BookId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="True" SortExpression="BookId" />
                        <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                        <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                        <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
                        <asp:BoundField DataField="BookCategory" HeaderText="BookCategory" SortExpression="BookCategory" />
                        <asp:BoundField DataField="BookPublisher" HeaderText="BookPublisher" SortExpression="BookPublisher" />
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
              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))" InsertCommand="INSERT INTO [Book] ([BookId], [BookName], [BookPrice], [BookAuthor], [BookCategory], [BookPublisher]) VALUES (@BookId, @BookName, @BookPrice, @BookAuthor, @BookCategory, @BookPublisher)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:BooksDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [BookPrice] = @BookPrice, [BookAuthor] = @BookAuthor, [BookCategory] = @BookCategory, [BookPublisher] = @BookPublisher WHERE [BookId] = @original_BookId AND [BookName] = @original_BookName AND [BookPrice] = @original_BookPrice AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookPublisher] = @original_BookPublisher) OR ([BookPublisher] IS NULL AND @original_BookPublisher IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuthor" Type="Int32" />
                        <asp:Parameter Name="original_BookCategory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookId" Type="Int32" />
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuthor" Type="Int32" />
                        <asp:Parameter Name="BookCategory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="Double" />
                        <asp:Parameter Name="BookAuthor" Type="Int32" />
                        <asp:Parameter Name="BookCategory" Type="Int32" />
                        <asp:Parameter Name="BookPublisher" Type="Int32" />
                        <asp:Parameter Name="original_BookId" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="Double" />
                        <asp:Parameter Name="original_BookAuthor" Type="Int32" />
                        <asp:Parameter Name="original_BookCategory" Type="Int32" />
                        <asp:Parameter Name="original_BookPublisher" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              
            </section>
            </div>
    </main>

</asp:Content>
