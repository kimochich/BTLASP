<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
     <div class="row">
            <div class="col-md-8">
                <div>
                    <form id="formsearch" name="search" method="post" action="http://www.lyrics.vn/search.html">
                        <table>
                            <tr>
                                <td style="width: 100%;">
                                    <div style="position: relative;">
                                        <input type="hidden" name="typesearch" value="lyrics" />
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
                <div id="nav-search">
                    <ul class="list-inline">
                        <asp:Literal ID="ltrMenuCon" runat="server"></asp:Literal>
                       
                       
                    </ul>
                </div>
                <div class="site-view idx-list-item clearfix">

                    <div class="subject">
                        <i class="fa fa-list fa-fw"></i> Lời bài hát xem nhiều nhất
                    </div>

                    <div class="col-md-12">

                            <div class="item shadow border-bot-tt">
                                <div class="item-info">
                                    <div class="li_m_row">
                                        <h3 class="bold"><i class="fa fa-file-text-o">&nbsp;</i><a href="lyrics/8489-quoc-ca.html">Quốc Ca</a>&nbsp;<i class="fa fa-link hide"></i></h3>
                                    </div>
                                </div>
                                <div class="content text-justify">
                                    <h5><i class="fa fa-user"></i>&nbsp;<a href="artist/van-cao.html">Văn Cao</a><em>&nbsp;|&nbsp;10 năm trước</em></h5>
                                    <em><a href="lyrics/8489-quoc-ca.html">Đoàn quân Việt Nam đi chung lòng cứu quốc, bước chân dồn vang trên đường gập ghềnh xa, cờ in máu chiến thắng mang hồn nước, súng ngoài xa chen&#8230;</a></em>
                                </div>
                            </div>
                        <asp:Literal ID="ltrMusic" runat="server"></asp:Literal>
                      
                    </div>
                  
                </div>


                <nav>
                    <ul class="pager">
                        <li><a href="lyrics/topview/2.html">Xem thêm »</a></li>
                    </ul>
                </nav>


                <!-- Begin: Paging -->

                <div class="clearfix"></div>
                <!-- End: Paging -->
            </div>
            <div class="col-md-4">
                
                <div class="col-md-12">
                    <div class="box">
                        <div>
                            <h3 class="pull-left text-uppercase">Lời bài hát yêu thích nhất</h3>

                            <h3 class="pull-right"><a href="lyrics/toplike.html">Xem thêm&nbsp;<i class="fa fa-angle-double-right"></i></a></h3>

                            <div class="clearfix"></div>
                        </div>
                        <ul>

                            <li>
                                <div class="li_r_row">
                                    <div class="info">
                                        <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="lyrics/11021-mong-uoc-ky-niem-xua.html">Mong Ước Kỷ Niệm Xưa</a></div>
                                        <div class="artist">Xuân Phương</div>
                                        <div class="lyrics"><em>Thời gian trôi qua mau chỉ còn lại những&#8230;</em></div>
                                    </div>
                                    <div>
                                        <div class="icon">
                                            <a href="lyrics/11021-mong-uoc-ky-niem-xua.html"><i class="fa fa-angle-right fa-2x"></i></a> </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="li_r_row">
                                    <div class="info">
                                        <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="lyrics/421-thanh-pho-buon.html">Thành Phố Buồn</a></div>
                                        <div class="artist">Lam Phương</div>
                                        <div class="lyrics"><em>Thành phố nào nhớ không em?  Nơi chúng mình&#8230;</em></div>
                                    </div>
                                    <div>
                                        <div class="icon">
                                            <a href="lyrics/421-thanh-pho-buon.html"><i class="fa fa-angle-right fa-2x"></i></a> </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="li_r_row">
                                    <div class="info">
                                        <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="lyrics/8879-mo-uoc-ngay-mai.html">Mơ Ước Ngày Mai</a></div>
                                        <div class="artist">Trần Đức</div>
                                        <div class="lyrics"><em>Em mang trên vai mầu khăn tươi thắm  Bao&#8230;</em></div>
                                    </div>
                                    <div>
                                        <div class="icon">
                                            <a href="lyrics/8879-mo-uoc-ngay-mai.html"><i class="fa fa-angle-right fa-2x"></i></a> </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="li_r_row">
                                    <div class="info">
                                        <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="lyrics/7578-beo-dat-may-troi.html">Bèo Dạt Mây Trôi</a></div>
                                        <div class="artist">Dân Ca</div>
                                        <div class="lyrics"><em>Bèo dạt mây trôi, chốn xa xôi, Anh ơi,&#8230;</em></div>
                                    </div>
                                    <div>
                                        <div class="icon">
                                            <a href="lyrics/7578-beo-dat-may-troi.html"><i class="fa fa-angle-right fa-2x"></i></a> </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="li_r_row">
                                    <div class="info">
                                        <div class="bold"><i class="fa fa-file-text">&nbsp;</i><a href="lyrics/350-bien-tinh.html">Biển Tình</a></div>
                                        <div class="artist">Lam Phương</div>
                                        <div class="lyrics"><em>Nằm nghe sóng vỗ từng lớp xa  Bọt tràn&#8230;</em></div>
                                    </div>
                                    <div>
                                        <div class="icon">
                                            <a href="lyrics/350-bien-tinh.html"><i class="fa fa-angle-right fa-2x"></i></a> </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
                <div id="fb-root"></div>
         
                <div class="col-md-12">
                    <div class="fb-page" data-href="https://www.facebook.com/lyrics.vn" data-hide-cover="true" data-show-facepile="true" data-show-posts="false">
                        <div class="fb-xfbml-parse-ignore">
                            <a href="#">Lời bài hát Việt Nam</a></blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
