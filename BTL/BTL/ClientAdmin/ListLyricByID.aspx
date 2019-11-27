<%@ Page Title="" Language="C#" MasterPageFile="~/ClientAdmin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ListLyricByID.aspx.cs" Inherits="BTL.ClientAdmin.ListLyricByID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-12">
        <h2>Danh sách lyric </h2>
        <br />
         <asp:Button CssClass="btn btn-primary" runat="server" Text="Trở lại danh sách"  PostBackUrl="~/ClientAdmin/Song_ListSong.aspx" />
          <asp:Button CssClass="btn btn-primary" runat="server" Text="Thêm lời mới"  PostBackUrl="~/ClientAdmin/AddLyric.aspx" />
        <asp:gridview CssClass="table table-bordered table-hover table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LyricsID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LyricsID" HeaderText="LyricsID" InsertVisible="False" ReadOnly="True" SortExpression="LyricsID" />
                <asp:BoundField DataField="MusicID" HeaderText="MusicID" SortExpression="MusicID" />
                <asp:BoundField DataField="LanguageID" HeaderText="LanguageID" SortExpression="LanguageID" />
                <asp:BoundField DataField="Lyric" HeaderText="Lyric" SortExpression="Lyric" HtmlEncode="False" HtmlEncodeFormatString="False" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="LyricsID" DataNavigateUrlFormatString="LyricEdit.aspx?LyricsID={0}" HeaderText="Sửa" Text="Sửa lời" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLASPConnectionString2 %>" DeleteCommand="DELETE FROM [Lyrics] WHERE [LyricsID] = @LyricsID" InsertCommand="INSERT INTO [Lyrics] ([MusicID], [LanguageID], [Lyric]) VALUES (@MusicID, @LanguageID, @Lyric)" SelectCommand="SELECT * FROM [Lyrics] WHERE ([MusicID] = @MusicID)" UpdateCommand="UPDATE [Lyrics] SET [MusicID] = @MusicID, [LanguageID] = @LanguageID, [Lyric] = @Lyric WHERE [LyricsID] = @LyricsID">
            <DeleteParameters>
                <asp:Parameter Name="LyricsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MusicID" Type="Int32" />
                <asp:Parameter Name="LanguageID" Type="Int32" />
                <asp:Parameter Name="Lyric" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="MusicID" QueryStringField="MusicID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MusicID" Type="Int32" />
                <asp:Parameter Name="LanguageID" Type="Int32" />
                <asp:Parameter Name="Lyric" Type="String" />
                <asp:Parameter Name="LyricsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
