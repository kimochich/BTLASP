<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Song_EditbyID.aspx.cs" Inherits="BTL.ClientAdmin.Song_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
     <div class="row">
        <div class="col-lg-12">
            <h2 class="text-center">Sửa bài hát </h2>
            <div class="col-lg-2"></div>
            <div class="col-lg-8" style="margin-top:20px">
                <div class="form-group">
                    <label>Người đăng</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlUserName" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Account]">
                    </asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Thể loại</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlCategory" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                </div>  
                <div class="form-group">
                    <label>Danh mục</label>
                    <asp:DropDownList runat="server" ID="drlSubMenu" class="form-control" DataSourceID="SqlDataSource3" DataTextField="SubMenuName" DataValueField="SubMenuID"/>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Sub_Menu]"></asp:SqlDataSource>
                </div>  
                <div class="form-group">
                    <label>Tên bài hát</label>
                    <asp:TextBox runat="server"  class="form-control" id="txtMusicName" placeholder="Tên bài hát"/>
                </div>
                 <div class="form-group">
                    <label>Ảnh album: </label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
                <div class="form-group">
                    <label>Tác giả</label>
                    <br />
                    <asp:DropDownList class="form-control" ID="drlAuthor" runat="server" DataSourceID="SqlDataSource4" DataTextField="AuthorName" DataValueField="AuthorID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Author]"></asp:SqlDataSource>
                </div>
                
                <div style="margin-top:10px; margin-bottom:10px">
                    <asp:Label CssClass="text-red" ID="mes" runat="server" />
                </div>

              <div>
                  <asp:Button runat="server" CssClass="btn btn-success" Text="Đăng bài" OnClick="Unnamed1_Click" />
                  <asp:Button runat="server" CssClass="btn btn-danger" Text="Hủy bỏ" PostBackUrl="~/ClientAdmin/Song_ListSong.aspx"/>
              </div>  
       
            </div>
            <div class="col-lg-2"></div>
             
        </div>
       </div>
</asp:Content>
