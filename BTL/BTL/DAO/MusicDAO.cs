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
        public String getItemNew()
        {
            String sql = "select * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID";
            String s = "";
            DataTable dt = conn.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += " <div class=\"item shadow border-bot-tt\"> <div class=\"item-info\">   <div class=\"li_m_row\">  <h3 class=\"bold\"><i class=\"fa fa-file-text-o\">&nbsp;</i><a href='Detail.aspx?musicID="+ dt.Rows[i]["MusicID"] + "'>" + dt.Rows[i]["MusicName"] + "</a>&nbsp;<i class=\"fa fa-link hide\"></i></h3>   </div>   </div>  <div class=\"content text-justify\">    <h5><i class=\"fa fa-user\"></i>&nbsp;<a href='Detail.aspx?musicID=" + dt.Rows[i]["MusicID"] + "'>" + dt.Rows[i]["AuthorName"] + "</a><em>&nbsp;|&nbsp; " + dt.Rows[i]["DateCreated"] + "</em></h5>                                <em><a href='Detail.aspx?musicID=" + dt.Rows[i]["MusicID"] + "'>  " + dt.Rows[i]["MusicName"] + "  </a></em>                            </div>                        </div>";
            }
            return s;
        }
        public String getMusicDetailById(String id, String idLang)
        {
            String sql = "select * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID inner join Lyrics on Music.MusicID = Lyrics.MusicID where Music.MusicID = "+id+" AND Lyrics.LanguageID = "+ idLang + "";
            String s ="" ;
            DataTable dt = conn.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += "<div class=\"site-view detail-item clearfix\">    <div>        <div class=\"item shadow\">            <div class=\"item-info border-bot-cy\">                <div class=\"pull-left\">                    <h3 class=\"bold\">" + dt.Rows[i]["MusicName"] + "</h3>                </div>                <div class=\"clearfix\"></div>            </div>                        <div class=\"content text-justify\">                <div class=\"more-info\">                    <p class=\"artist\">                        <i class=\"fa fa-leaf\">&nbsp;</i><strong>Tác giả</strong>&nbsp;:&nbsp;<a href=\"#\">" + dt.Rows[i]["AuthorName"] + "</a>                    </p>                    <p class=\"more\">                        <i class=\"fa fa-user\">&nbsp;</i><strong>Người đăng</strong>&nbsp;:&nbsp;<a href=\"#\" class=\"submited\">administrator</a>,&nbsp;" + dt.Rows[i]["DateCreated"] + "                   </p>                </div>     <div id=\"chords_detail\" class=\"detail\">  " + dt.Rows[i]["lyric"] + "             </div>       <div id=\"show_tab\"></div>            </div>        </div>    </div></div>  ";
            }
            return s;
        }

    }
}