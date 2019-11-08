<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AuthorInsert.aspx.cs" Inherits="BTL.ClientAdmin.AuthorInsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-2"></div>
    <div class="col-md-6">

        <h2>Thêm tác giả</h2><br />

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="AuthorID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
           
            <InsertItemTemplate>
                AuthorName:
                <asp:TextBox class="form-control" ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
                <br />
                DateOfBirth:
                <asp:TextBox  class="form-control" ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                <br />
                Address:
                <asp:TextBox  class="form-control" ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Description:
                <asp:TextBox  class="form-control" ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Gender:
                <asp:CheckBox CssClass="checkbox" ID="GenderCheckBox" runat="server" Checked='<%# Bind("Gender") %>' />
                <br />
                <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            
        </asp:FormView>
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
    <div class="col-md-2"></div>
</asp:Content>
