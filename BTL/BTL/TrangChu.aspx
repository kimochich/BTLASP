<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL.TrangChu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="vn">

<!-- Mirrored from www.lyrics.vn/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Oct 2019 02:22:35 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv='Content-Language' content="vi" />
    <meta http-equiv='Last-Modified' content="Mon, 29 Jun 2015 17:00:00" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Lời bài hát Việt Nam | Lyrics.vn là trang tổng hợp hàng ngàn lời bài hát Việt Nam và Quốc tế. Là nơi chia sẻ hợp âm các bài hát cho những ai yêu thích Guitar và tra cứu mã karaoke Việt Nam." />
    <meta name="keywords" content="Lời bài hát, Hợp âm bài hát, Mã karaoke, Karaoke Arirang 5 số, Karaoke California 6 số" />
    <meta name="author" content="Huynh Cat Viet" />
    <meta name="alexaVerifyID" content="ieZaHOpxtqA0yyh0rypJM9C1j5A" />
    <!-- Facebook -->
    <meta property="og:site_name" content="Lời bài hát Việt Nam" />
    <meta property="og:title" content="Lời bài hát Việt Nam" />
    <meta property="og:url" content="index.html" />
    <meta property="og:description" content="Lời bài hát Việt Nam | Lyrics.vn là trang tổng hợp hàng ngàn lời bài hát Việt Nam và Quốc tế. Là nơi chia sẻ hợp âm các bài hát cho những ai yêu thích Guitar và tra cứu mã karaoke Việt Nam." />
    <meta property="fb:app_id" content="1387006574960705" />
    <meta property="article:author" content="https://www.facebook.com/huynhcatviet" />
    <meta property="article:publisher" content="https://www.facebook.com/lyrics.vn" />
    <!-- CSS Common -->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine" />
    <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
    <!-- CSS Custom -->

    <link href="http://www.lyrics.vn/css/custom.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <script>
        (function(i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function() {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-32013830-1', 'auto');
        ga('send', 'pageview');
    </script>
    <title>Lời bài hát Việt Nam | Lyrics.vn</title>
</head>

<body>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
                <div>
                    <div class="pull-left">
                        <a class="navbar-brand" href="index.html"><img src="http://www.lyrics.vn/images/lyrics.vn.40.png" alt="" /></a>
                    </div>
                    <div class="pull-left">
                        <a class="logotext" href="index.html">Loihay.vn</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="lyrics.html"><i class="fa fa-folder-open"></i>&nbsp;Nhạc việt</a></li>
                    <li class=""><a href="chords.html"><i class="fa fa-music"></i>&nbsp;US-UK</a></li>
                    <li class=""><a href="kara.html"><i class="fa fa-microphone"></i>&nbsp;Hàn Quốc</a></li>
                    <!--Menu add here-->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class=""><a href="member/register.html"><i class="fa fa-key fa-fw">&nbsp;</i>Đăng ký</a></li>
                    <li class=""><a href="member/login.html"><i class="fa fa-lock fa-fw">&nbsp;</i>Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container">
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
                        <li class="m-right-5 active"><a href="lyrics.html">Lời bài hát</a></li>
                        <li class="m-right-5 "><a href="chords.html">Hợp âm</a></li>
                        <li class=""><a href="kara.html">Karaoke</a></li>
                    </ul>
                </div>
                <div class="site-view idx-list-item clearfix">

                    <div class="subject">
                        <i class="fa fa-list fa-fw"></i> Lời bài hát xem nhiều nhất
                    </div>

                    <div class="col-md-6">

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

                      
                    </div>
                    <div class="col-md-6">

                        <div class="item shadow border-bot-tt">
                            <div class="item-info">
                                <div class="li_m_row">
                                    <h3 class="bold"><i class="fa fa-file-text-o">&nbsp;</i><a href="lyrics/8037-proud-of-you.html">Proud of you</a>&nbsp;<i class="fa fa-link hide"></i></h3>
                                </div>
                            </div>
                            <div class="content text-justify">
                                <h5><i class="fa fa-user"></i>&nbsp;<a href="artist/fiona-fung.html">Fiona Fung</a><em>&nbsp;|&nbsp;10 năm trước</em></h5>
                                <em><a href="lyrics/8037-proud-of-you.html">Love in your eyes Sitting silent by my side Going on Holding hand Walking through the nights Hold me up Hold me tight Lift me up to touch the sky&#8230;</a></em>
                            </div>
                        </div>

                      
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
                <script>
                    window.fbAsyncInit = function() {
                        FB.init({
                            appId: '1387006574960705',
                            xfbml: true,
                            version: 'v2.3'
                        });
                    };
                    (function(d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) {
                            return;
                        }
                        js = d.createElement(s);
                        js.id = id;
                        js.src = "../connect.facebook.net/vi_VN/sdk.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));
                </script>
                <div class="col-md-12">
                    <div class="fb-page" data-href="https://www.facebook.com/lyrics.vn" data-hide-cover="true" data-show-facepile="true" data-show-posts="false">
                        <div class="fb-xfbml-parse-ignore">
                            <blockquote cite="https://www.facebook.com/lyrics.vn"><a href="https://www.facebook.com/lyrics.vn">Lời bài hát Việt Nam</a></blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btnUpTop">
            <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up"></span></a>
        </div>
    </div>

    <!-- Footer Begin -->
    <div id="footer">
        <div class="container">
            <div class="row">
                <p class="text-muted">Copyright © 2009 - 2015 <a href="index.html">Lyrics.vn</a>. All rights reserved. </p>
                <p class="text-muted">
                    <a href="#">Privacy & Terms</a> &nbsp;|&nbsp;
                    <a href="#">Contact</a> &nbsp;|&nbsp;
                    <a href="#">About</a>
                </p>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myDialog" tabindex="-1" role="dialog" aria-labelledby="myTitle" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myTitle">Modal title</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Footer End -->
    <script src="../ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var base_url = "index.html";
    </script>

    <script type="text/javascript" src="http://www.lyrics.vn/js/common.lyrics.js"></script>

</body>

<!-- Mirrored from www.lyrics.vn/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Oct 2019 02:22:55 GMT -->

</html>