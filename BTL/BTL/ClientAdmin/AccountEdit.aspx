<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AccountEdit.aspx.cs" Inherits="BTL.ClientAdmin.AccountEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
  
    <div class="nd" style="margin-left:30px;">
          <h2>Danh sách account</h2>
          <p>&nbsp;</p>
        <asp:Button CssClass="btn btn-primary" runat="server" Text="Thêm Account <3" PostBackUrl="~/ClientAdmin/AccountInsert.aspx" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-hover table-responsive" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:CheckBoxField DataField="Role" HeaderText="Role" SortExpression="Role" />
               
                <asp:CommandField ShowEditButton="True" ItemStyle-CssClass="btn btn-success" EditText="Sửa" >
<ItemStyle CssClass="btn btn-success" Width="40px"></ItemStyle>
                </asp:CommandField>
               
                <asp:CommandField  ShowDeleteButton="True" ItemStyle-CssClass="btn btn-danger" DeleteText="Xóa" >
<ItemStyle CssClass="btn btn-danger"></ItemStyle>
                </asp:CommandField>
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" DeleteCommand="DELETE FROM [Account] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [Account] ([UserName], [Password], [Address], [DateOfBirth], [Gender], [Role]) VALUES (@UserName, @Password, @Address, @DateOfBirth, @Gender, @Role)" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [Password] = @Password, [Address] = @Address, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender, [Role] = @Role WHERE [UserName] = @UserName">
              <DeleteParameters>
                  <asp:Parameter Name="UserName" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="UserName" Type="String" />
                  <asp:Parameter Name="Password" Type="String" />
                  <asp:Parameter Name="Address" Type="String" />
                  <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                  <asp:Parameter Name="Gender" Type="Boolean" />
                  <asp:Parameter Name="Role" Type="Boolean" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Password" Type="String" />
                  <asp:Parameter Name="Address" Type="String" />
                  <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                  <asp:Parameter Name="Gender" Type="Boolean" />
                  <asp:Parameter Name="Role" Type="Boolean" />
                  <asp:Parameter Name="UserName" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [Account] ([UserName], [Password], [Address], [DateOfBirth], [Gender], [Role]) VALUES (@UserName, @Password, @Address, @DateOfBirth, @Gender, @Role)" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [Password] = @Password, [Address] = @Address, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender, [Role] = @Role WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Gender" Type="Boolean" />
                <asp:Parameter Name="Role" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Gender" Type="Boolean" />
                <asp:Parameter Name="Role" Type="Boolean" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
