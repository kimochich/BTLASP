<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddLyric.aspx.cs" Inherits="BTL.ClientAdmin.AddLyric" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-lg-12">
            <h2 class="text-center">Thêm lời bài hát mới</h2>
            <div class="col-lg-2"></div>
            <div class="col-lg-8" style="margin-top:20px">
                <div class="form-group">
                    <label>MusicID</label>
                   <asp:DropDownList runat="server" class="form-control" ID="drlMusicID" DataSourceID="SqlDataSource1" DataTextField="MusicName" DataValueField="MusicID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Music]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Ngôn ngữ</label>
                    <asp:DropDownList runat="server" class="form-control" id="drlLanguage" DataSourceID="SqlDataSource2" DataTextField="Language" DataValueField="LanguageID"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" SelectCommand="SELECT * FROM [Languages]"></asp:SqlDataSource>
                </div>  
                
                <div class="form-group">
                    <label>Lời bài hát</label>
                    
                   <CKEditor:CKEditorControl ID="cklyric" BasePath="/ckeditor/" runat="server">

                   </CKEditor:CKEditorControl>
                    <!--<asp:TextBox id="txtLoibaiHat" runat="server" class="form-control"  
                        TextMode="MultiLine"></asp:TextBox>-->
                </div>
              <div class="form-group">
                    <asp:Label runat="server" ID="mess"></asp:Label>
                   
                   
                </div>
              <div>
                  <asp:Button runat="server" CssClass="btn btn-success" Text="Thêm lời" OnClick="Unnamed1_Click" />
                  <asp:Button runat="server" CssClass="btn btn-danger" Text="Hủy bỏ" PostBackUrl="~/ClientAdmin/Song_ListSong.aspx"/>
              </div>  
       
            </div>
            <div class="col-lg-2"></div>
             
        </div>
</asp:Content>
