using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL.ClientAdmin.DBconnection;
namespace BTL.ClientAdmin
{
    public partial class AddLyric : System.Web.UI.Page
    {
        DBHelper DBHelper;
        protected void Page_Load(object sender, EventArgs e)
        {
            DBHelper = new DBHelper();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtLoibaiHat.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống lyric !";
            }
            else
            {
                if (DBHelper.insertLyric(int.Parse(drlMusicID.Text), int.Parse(drlLanguage.Text), txtLoibaiHat.Text))
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