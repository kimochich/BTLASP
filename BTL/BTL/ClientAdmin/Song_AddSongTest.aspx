<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Song_AddSongTest.aspx.cs" Inherits="BTL.ClientAdmin.Song_AddSongTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="text-center">Thêm bài hát mới</h2>
            <div class="col-lg-2"></div>
            <div class="col-lg-8" style="margin-top:20px">
                <div class="form-group">
                    <label>Người đăng</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlUserName" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionStringAddSong %>" SelectCommand="SELECT * FROM [Account]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Thể loại</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlCategory" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionStringAddSong %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                </div>  
                <div class="form-group">
                    <label>Danh mục</label>
                    <asp:DropDownList runat="server" ID="drlSubMenu" class="form-control" DataSourceID="SqlDataSource3" DataTextField="SubMenuName" DataValueField="SubMenuID"/>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionStringAddSong %>" SelectCommand="SELECT * FROM [Sub_Menu]"></asp:SqlDataSource>
                </div>  
                <div class="form-group">
                    <label>Tên bài hát</label>
                    <asp:TextBox runat="server"  class="form-control" id="txtMusicName" placeholder="Tên bài hát"/>
                </div>
                <div class="form-group">
                    <label>Tác giả</label>
                    <asp:TextBox runat="server"  class="form-control" id="txtAuthor" placeholder="Tên tác giả"/>
                </div>
                <div class="form-group">
                    <label>Sinh ngày</label>
                    <asp:TextBox runat="server" TextMode="DateTime"  class="form-control" id="txtDateBirth" placeholder="yyyy-MM-dd"/>
                </div>
                <div class="form-group">
                    <label>Địa chỉ</label>
                    <asp:TextBox runat="server"  class="form-control" id="txtAddress" placeholder="Địa chỉ"/>
                </div>
                <div class="form-group">
                    <label>Mô tả</label>
                    <asp:TextBox runat="server"  class="form-control" id="txtDes" placeholder="Mô tả"/>
                </div>
                <div class="form-group">
                    <label>Giới tính</label>
                    <asp:DropDownList runat="server"   class="form-control" id="drlGender">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
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
