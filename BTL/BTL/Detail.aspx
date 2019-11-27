<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BTL.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <div class="col-md-8">
        <div>
            <form id="formsearch" name="search" method="post" action="http://www.lyrics.vn/search.html">
                <table>
                    <tr>
                        <td style="width: 100%;">
                            <div style="position: relative;">
                                <input type="hidden" name="typesearch" value="chords" />
                                <input type="text" id="tf_search" name="tf_search" class="form-control input-search" placeholder="Nhập tên bài hát / tác giả / lời bài hát để tìm kiếm" value="" autocomplete="false" />
                                <span id="searchclear" class="glyphicon glyphicon-remove"></span>
                            </div>
                        </td>
                        <td class="buttons left" style="width: 60px;">
                            <button type="submit" class="btnsearch"><i class="fa fa-search fa-fw fa-2x"></i></button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <%--<div id="nav-search">
    <ul class="list-inline">
        <li class="m-right-5 "><a href="../lyrics.html">Lời bài hát</a></li>
        <li class="m-right-5 active"><a href="../chords.html">Hợp âm</a></li>
        <li class=""><a href="../kara.html">Karaoke</a></li>
    </ul>
</div>--%>
        <!--   
<div class="site-view detail-item clearfix">
    <div>
        <div class="item shadow">
            <div class="item-info border-bot-cy">
                <div class="pull-left">
                    <h3 class="bold">Giấc mơ Chapi</h3>
                </div>
                <div class="clearfix"></div>
            </div>            
            <div class="content text-justify">
                <div class="more-info">
                    <p class="artist">
                        <i class="fa fa-leaf">&nbsp;</i><strong>Tác giả</strong>&nbsp;:&nbsp;<a href="../artist/tran-tien/chords.html">Trần Tiến</a>                    </p>
                    <p class="more">
                        <i class="fa fa-user">&nbsp;</i><strong>Người đăng</strong>&nbsp;:&nbsp;<a href="../member/administrator/chords.html" class="submited">administrator</a>,&nbsp;7 năm trước
                    </p>
                </div>
                
             
                <div id="chords_detail" class="detail">
                Ở nơi [Em] ấy tôi đã [G] thấy trên ngọn núi cao<br/>
Có hai [C] người, chỉ có hai [Em] người yêu [Am] nhau [Em] <br/>
Họ đã [Em] sống không mùa [G] đông không mùa nắng mưa<br/>
Có một [C] mùa, chỉ có một [Em] mùa yêu [Am] nhau [Em]  [Am]  [C]  [Em] <br/>
<br/>
Ở nơi [G] ấy đàn dê trắng nhởn nhơ quanh [Am] đồi<br/>
Một mái tranh [C] nghèo một nhà [B7] sàn yên vui<br/>
Ở nơi [G] ấy họ đang sống cuộc sống yên [Am] bình<br/>
Ai [Am] nghèo cũng có cây [Em] đàn cha [G] pi<br/>
Khi rung [Am] lên vài sợi dây đàn đã đong [C] đầy hồn [B7] người [Em] Raglai<br/>
<br/>
Ôi [C] Raglai những rừng cây ngọn núi mang tiếng [G] đàn Cha pi [Em] <br/>
Ai [C] yêu tự do yêu rừng xanh thì lên núi nghe [G] đàn Cha pi [Em] <br/>
Tôi [Am] yêu Cha pi không còn cô đơn, không [Em] buồn, không [Em] vui<br/>
Tôi [Am] nghe Cha pi chợt thấy nao [C] lòng vì một [B7] giấc mơ, ôi Cha [Em] pi<br/>
<br/>
 [Em] Cha pi [C] , Cha [D] pi, [C] Cha pi, [D] Cha pi, [D] ôi Cha pi [Em]                 </div>
                <div id="show_tab"></div>
            </div>
        </div>
    </div>
</div>  -->

        <div class="col-md-12">
            <br />
            <p>  Lựa chọn ngôn ngữ:</p>
            <div class="col-md-10">
                <asp:DropDownList CssClass="form-control" ID="drlLanguage" runat="server" OnSelectedIndexChanged="drlLanguage_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="col-md-2" style=" margin-top: 4px;">
                <asp:Button ID="btnLang" runat="server" CssClass="btn btn-primary" Text="Chuyển lời" OnClick="btnLang_Click" />
            </div>
        </div>
        <br />
        <asp:Literal ID="ltrDetail" runat="server"></asp:Literal>


    </div>
    <div class="col-md-4">
        <div class="col-md-12">
            <div class="box">

                <h3>Cùng tác giả <asp:Literal ID="ltrTacGia" runat="server"></asp:Literal>&nbsp;<i class="fa fa-angle-double-right"></i></h3>

                <ul>

                    <li>
                        <div class="li_r_row" style="left: 0px; top: 0px">
                            <div class="info">
                                <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="94-mat-troi-be-con.html">Mặt trời bé con</a></div>
                                <div class="artist">Trần Tiến</div>
                                <div class="lyrics"><em>[Am]  [F]  [G]  [Am]  Ngoài kia [Am]&#8230;</em></div>
                            </div>
                            <div>
                                <div class="icon">
                                    <a href="94-mat-troi-be-con.html"><i class="fa fa-angle-right fa-2x"></i></a>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
        </div>

        <div class="btnUpTop">
            <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up"></span></a>
        </div>
    </div>

</asp:Content>
