using BTL.ClientAdmin.DBconnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace BTL.ClientAdmin
{
    public partial class LyricEdit : System.Web.UI.Page
    {
        int id;
        DBHelper DBHelper;
        protected void Page_Load(object sender, EventArgs e)
        {
            DBHelper = new DBHelper();
            if (!IsPostBack)
            {
                id = int.Parse(Request.QueryString.Get("LyricsID").ToString());
                musicID.Text = id.ToString();

                String sql = "select * from Lyrics where LyricsID =" + id + " ";
                SqlDataReader dt = DBHelper.GetSqlDataReader(sql);
                while (dt.Read())
                {
                    drlLanguage.SelectedValue = dt["LanguageID"].ToString();

                    txtLoibaiHat.Text = dt["Lyric"].ToString();
                }

            }



        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            if (txtLoibaiHat.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống lyric !";
            }
            else
            {
                Boolean kq = DBHelper.edittLyric(int.Parse(musicID.Text), int.Parse(drlLanguage.Text), txtLoibaiHat.Text);
                // mess.Text = " chuoi " + int.Parse(musicID.Text) + int.Parse(drlLanguage.Text) + txtLoibaiHat.Text;
                if (kq == true)
                {
                    //mess.Text = txtLoibaiHat.Text;
                    Response.Redirect("Song_ListSong.aspx");
                }
                else
                {
                    mess.Text = "Có lỗi !!";
                }

                //ess.Text = txtLoibaiHat.Text;




            }



        }
    }
}