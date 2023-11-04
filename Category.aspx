<%@ Page Title="Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebAppAzure.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Category Details.</h3>
    <p>
       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CatId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" SortExpression="CatId" />
                <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BooksDbConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName" InsertCommand="INSERT INTO [Category] ([CatId], [CatName]) VALUES (@CatId, @CatName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName WHERE [CatId] = @original_CatId AND [CatName] = @original_CatName">
            <DeleteParameters>
                <asp:Parameter Name="original_CatId" Type="Int32" />
                <asp:Parameter Name="original_CatName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CatId" Type="Int32" />
                <asp:Parameter Name="CatName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CatName" Type="String" />
                <asp:Parameter Name="original_CatId" Type="Int32" />
                <asp:Parameter Name="original_CatName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
    </p>
        
    </main>
</asp:Content>
