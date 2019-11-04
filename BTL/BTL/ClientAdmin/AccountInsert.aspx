<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AccountInsert.aspx.cs" Inherits="BTL.ClientAdmin.AccountInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="nd col-md-6" style="margin-left:30px">
        <h2>
            Thêm Account
        </h2>
        <br />
         <asp:Button CssClass="btn btn-primary" runat="server" Text="Danh sách Accounts" PostBackUrl="~/ClientAdmin/AccountEdit.aspx" />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="table table-bordered table-hover" >
        
            <InsertItemTemplate>
                UserName:
                <asp:TextBox CssClass="form-control" ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                Password:
                <asp:TextBox CssClass="form-control" ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Address:
                <asp:TextBox CssClass="form-control" ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                DateOfBirth:
                <asp:TextBox CssClass="form-control" ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                <br />
                Gender:
                <asp:CheckBox  CssClass="checkbox" ID="GenderCheckBox" runat="server" Checked='<%# Bind("Gender") %>' style="left: 22px; top: 0px" />
                <br />
                Role:
                <asp:CheckBox CssClass="checkbox" ID="RoleCheckBox" runat="server" Checked='<%# Bind("Role") %>' style="left: 22px; top: 0px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm Acc nè <3" CssClass="btn btn-primary" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" CssClass="btn btn-primary" />
            </InsertItemTemplate>
       
        </asp:FormView>

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
