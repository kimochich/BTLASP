<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ListAuthor.aspx.cs" Inherits="BTL.ClientAdmin.ListAuthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-12">
        <h2>Danh sách tác giả</h2>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Thêm tác giả" CssClass="btn btn-primary" PostBackUrl="~/ClientAdmin/AuthorInsert.aspx"/>
        <asp:GridView CssClass="table table-bordered table-hover table-responsive" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" InsertVisible="False" ReadOnly="True" SortExpression="AuthorID" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" DeleteCommand="DELETE FROM [Author] WHERE [AuthorID] = @AuthorID" InsertCommand="INSERT INTO [Author] ([AuthorName], [DateOfBirth], [Address], [Description], [Gender]) VALUES (@AuthorName, @DateOfBirth, @Address, @Description, @Gender)" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [AuthorName] = @AuthorName, [DateOfBirth] = @DateOfBirth, [Address] = @Address, [Description] = @Description, [Gender] = @Gender WHERE [AuthorID] = @AuthorID">
            <DeleteParameters>
                <asp:Parameter Name="AuthorID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Gender" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AuthorName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Gender" Type="Boolean" />
                <asp:Parameter Name="AuthorID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
