using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL.ClientAdmin.DBconnection;
using System.Data.SqlClient;
using System.Data;

namespace BTL.DAO
{

    public class MusicDAO
    {
        DBHelper conn;

        public MusicDAO(){
            conn = new DBHelper();
        }
        public String getItemRandom()
        {
            String sql = "select top 20 * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID ORDER BY NEWID() ";
            String s = "";
            DataTable dt = conn.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += " <div class=\"item shadow border-bot-tt\"> <div class=\"item-info\">   <div class=\"li_m_row\">  <h3 class=\"bold\"><i class=\"fa fa-file-text-o\">&nbsp;</i><a href='Detail.aspx?musicID="+ dt.Rows[i]["MusicID"] + "'>" + dt.Rows[i]["MusicName"] + "</a>&nbsp;<i class=\"fa fa-link hide\"></i></h3>   </div>   </div>  <div class=\"content text-justify\">    <h5><i class=\"fa fa-user\"></i>&nbsp;<a href='Detail.aspx?musicID=" + dt.Rows[i]["MusicID"] + "'>" + dt.Rows[i]["AuthorName"] + "</a><em>&nbsp;|&nbsp; " + dt.Rows[i]["DateCreated"] + "</em></h5>                                <em><a href='Detail.aspx?musicID=" + dt.Rows[i]["MusicID"] + "'>  " + dt.Rows[i]["MusicName"] + "  </a></em>                            </div>                        </div>";
            }
            return s;
        }
        public String getItemNew()
        {
            String sql = "select top 10 * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID ORDER BY DateCreated DESC";
            //String sql = "select top 10 * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID inner join Lyrics on Lyrics.MusicID=Music.MusicID where Lyrics.LanguageID=1 ORDER BY DateCreated DESC";
            String s = "";
            DataTable dt = conn.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += "<li> <div class=\"li_r_row\">  <div class=\"info\">  <div class=\"bold\"><i class=\"fa fa-file-text\">&nbsp;</i><a href='Detail.aspx?musicID=" + dt.Rows[i]["MusicID"] + "'>" + dt.Rows[i]["MusicName"] + "</a></div>  <div class=\"artist\">" + dt.Rows[i]["AuthorName"] + "</div>    <div class=\"lyrics\"><em>   </em></div>  </div>                                    <div>  <div class=\"icon\">  <a href=\"lyrics/11021-mong-uoc-ky-niem-xua.html\"><i class=\"fa fa-angle-right fa-2x\"></i></a> </div> </div>   </div>  </li>";
            }
            return s;
        }


        public String getMusicDetailById(String id, String idLang)
        {
            String sql = "select TOP 1 * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID inner join Lyrics on Music.MusicID = Lyrics.MusicID inner join Category on Category.CategoryID = Music.CategoryID where Music.MusicID  = " + id+" AND Lyrics.LanguageID = "+ idLang + "";
            String s ="" ;
            DataTable dt = conn.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += "<div class=\"site-view detail-item clearfix\">    <div>        <div class=\"item shadow\">            <div class=\"item-info border-bot-cy\">                <div class=\"pull-left\">                    <h3 class=\"bold\">" + dt.Rows[i]["MusicName"] + "</h3>                </div>                <div class=\"clearfix\"></div>            </div>                        <div class=\"content text-justify\">                <div class=\"more-info\">                    <p class=\"artist\">                        <i class=\"fa fa-leaf\">&nbsp;</i><strong>Tác giả</strong>&nbsp;:&nbsp;<a href=\"#\">" + dt.Rows[i]["AuthorName"] + "</a> </p>      <p class=\"artist\">                        <i class=\"fa fa-leaf\">&nbsp;</i><strong>Thể loại</strong>&nbsp;:&nbsp;<a href=\"#\">" + dt.Rows[i]["CategoryName"] + "</a>                    </p>                   <p class=\"more\">                        <i class=\"fa fa-user\">&nbsp;</i><strong>Người đăng</strong>&nbsp;:&nbsp;<a href=\"#\" class=\"submited\">administrator</a>,&nbsp;" + dt.Rows[i]["DateCreated"] + "                   </p>                </div>     <div id=\"chords_detail\" class=\"detail\"> <img src='Images/"+ dt.Rows[i]["image"]+"' width='150px' height='150px'/> " + dt.Rows[i]["lyric"] + "             </div>       <div id=\"show_tab\"></div>            </div>        </div>    </div></div>  ";
            }
            return s;
        }

    }
}