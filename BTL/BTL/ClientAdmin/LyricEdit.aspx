<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="LyricEdit.aspx.cs" Inherits="BTL.ClientAdmin.LyricEdit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
          <div class="col-lg-12">
            <h2 class="text-center">Sửa lời bài hát mới</h2>
            <div class="col-lg-2"></div>
            <div class="col-lg-8" style="margin-top:20px">
                <div class="form-group">
                    <label>MusicID</label>
                    <asp:Label ID="musicID" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label>Ngôn ngữ</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlLanguage" DataSourceID="SqlDataSource2" DataTextField="Language" DataValueField="LanguageID"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Languages]"></asp:SqlDataSource>
                </div>  
                
                <div class="form-group">
                    <label>Lời bài hát</label>
                   
                   <CKEditor:CKEditorControl ID="txtLoibaiHat" BasePath="/ckeditor/" runat="server">

                   </CKEditor:CKEditorControl>
                </div>
              <div class="form-group">
                    <asp:Label runat="server" ID="mess"></asp:Label>
                   
                   
                </div>
              <div>
                  <asp:Button runat="server" CssClass="btn btn-success" Text="Sửa lời" OnClick="Unnamed1_Click" />
                  <asp:Button runat="server" CssClass="btn btn-danger" Text="Hủy bỏ" PostBackUrl="~/ClientAdmin/Song_ListSong.aspx"/>
              </div>  
       
            </div>
            <div class="col-lg-2"></div>
             
        </div>
</asp:Content>
