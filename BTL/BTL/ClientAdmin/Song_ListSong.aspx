<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Song_ListSong.aspx.cs" Inherits="BTL.ClientAdmin.Song_ListSong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="row">
        <div class="col-sm-1"></div>
       <div class="col-xs-10 text-center">
           <h2><strong>Danh sách bài hát</strong></h2>
           <div class="col-lg-12 text-right"> 
               <asp:Button runat="server" style="margin-top:-6px; margin-bottom:6px" 
                   CssClass="btn btn-success" 
                   PostBackUrl="~/ClientAdmin/Song_AddSongTest.aspx"
                   Text="Thêm bài hát" />
           </div> 
           <asp:GridView CssClass="table table-bordered table-hover table-responsive"
               RowStyle-CssClass="success" HeaderStyle-BackColor="Beige" ID="girdView_ListSong" runat="server" 
               AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MusicID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
               <Columns>
                   <asp:BoundField DataField="MusicID" HeaderText="MusicID" InsertVisible="False" ReadOnly="True" SortExpression="MusicID" />
                   <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                   <asp:BoundField DataField="SubMenuID" HeaderText="SubMenuID" SortExpression="SubMenuID" />
                   <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                   <asp:BoundField DataField="MusicName" HeaderText="MusicName" SortExpression="MusicName" />
                   <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
                   <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                   <asp:CommandField  ShowDeleteButton="True" ShowEditButton="True" />
                   <asp:HyperLinkField DataNavigateUrlFields="MusicID" DataNavigateUrlFormatString="ListLyricById.aspx?MusicID={0}" Text="Quản lý lyric" />
               </Columns>

               <FooterStyle BackColor="White" ForeColor="#000066" />

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

               <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />

<RowStyle CssClass="success" ForeColor="#000066"></RowStyle>

               <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#007DBB" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#00547E" />

               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" DeleteCommand="DELETE FROM [Music] WHERE [MusicID] = @MusicID" InsertCommand="INSERT INTO [Music] ([UserName], [SubMenuID], [CategoryID], [MusicName], [DateCreated], [Image]) VALUES (@UserName, @SubMenuID, @CategoryID, @MusicName, @DateCreated, @Image)" SelectCommand="SELECT * FROM [Music]" UpdateCommand="UPDATE [Music] SET [UserName] = @UserName, [SubMenuID] = @SubMenuID, [CategoryID] = @CategoryID, [MusicName] = @MusicName, [DateCreated] = @DateCreated, [Image] = @Image WHERE [MusicID] = @MusicID">
                   <DeleteParameters>
                       <asp:Parameter Name="MusicID" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="UserName" Type="String" />
                       <asp:Parameter Name="SubMenuID" Type="Int32" />
                       <asp:Parameter Name="CategoryID" Type="Int32" />
                       <asp:Parameter Name="MusicName" Type="String" />
                       <asp:Parameter Name="DateCreated" Type="DateTime" />
                       <asp:Parameter Name="Image" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="UserName" Type="String" />
                       <asp:Parameter Name="SubMenuID" Type="Int32" />
                       <asp:Parameter Name="CategoryID" Type="Int32" />
                       <asp:Parameter Name="MusicName" Type="String" />
                       <asp:Parameter Name="DateCreated" Type="DateTime" />
                       <asp:Parameter Name="Image" Type="String" />
                       <asp:Parameter Name="MusicID" Type="Int32" />
                   </UpdateParameters>
           </asp:SqlDataSource>
               <asp:SqlDataSource ID="DanhSachBaiHat" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString %>" DeleteCommand="DELETE FROM [Music] WHERE [MusicID] = @MusicID" InsertCommand="INSERT INTO [Music] ([UserName], [SubMenuID], [CategoryID], [MusicName], [DateCreated], [Image]) VALUES (@UserName, @SubMenuID, @CategoryID, @MusicName, @DateCreated, @Image)" SelectCommand="SELECT * FROM [Music]" UpdateCommand="UPDATE [Music] SET [UserName] = @UserName, [SubMenuID] = @SubMenuID, [CategoryID] = @CategoryID, [MusicName] = @MusicName, [DateCreated] = @DateCreated, [Image] = @Image WHERE [MusicID] = @MusicID">
                   <DeleteParameters>
                       <asp:Parameter Name="MusicID" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="UserName" Type="String" />
                       <asp:Parameter Name="SubMenuID" Type="Int32" />
                       <asp:Parameter Name="CategoryID" Type="Int32" />
                       <asp:Parameter Name="MusicName" Type="String" />
                       <asp:Parameter Name="DateCreated" Type="DateTime" />
                       <asp:Parameter Name="Image" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="UserName" Type="String" />
                       <asp:Parameter Name="SubMenuID" Type="Int32" />
                       <asp:Parameter Name="CategoryID" Type="Int32" />
                       <asp:Parameter Name="MusicName" Type="String" />
                       <asp:Parameter Name="DateCreated" Type="DateTime" />
                       <asp:Parameter Name="Image" Type="String" />
                       <asp:Parameter Name="MusicID" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="sqlListSong" runat="server"></asp:SqlDataSource>
       </div>
       <div class="col-sm-1"></div>
   </div>
</asp:Content>
