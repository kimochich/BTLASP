using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL.ClientAdmin.DBconnection;
namespace BTL.ClientAdmin
{
    public partial class Song_AddLyricsSong : System.Web.UI.Page
    {
        int id;
        DBHelper DBHelper;
        protected void Page_Load(object sender, EventArgs e)
        {
           id= int.Parse(Request.QueryString.Get("id").ToString());
            musicID.Text = id.ToString();
            DBHelper = new DBHelper();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if(txtLoibaiHat.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống lyric !";
            }
            else
            {
              if(  DBHelper.insertLyric(id, int.Parse(drlLanguage.Text), txtLoibaiHat.Text))
                {
                    Response.Redirect("Song_ListSong.aspx");
                }
                else
                {
                    mess.Text = "Có lỗi !!";
                }
                
            }

        }
    }
}