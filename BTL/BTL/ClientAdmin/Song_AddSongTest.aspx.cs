using BTL.ClientAdmin.DBconnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BTL.ClientAdmin
{
    public partial class Song_AddSongTest : System.Web.UI.Page
    {
        DBHelper dbHelper;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbHelper = new DBHelper();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtMusicName.Text.Equals(""))
            {
                mes.Text = "Hãy nhập tên bài hát!";
            }
            else if (txtAuthor.Text.Equals(""))
            {
                mes.Text = "Hãy nhập tên tác giả!";
            }
            else if (txtDateBirth.Text.Equals(""))
            {
                mes.Text = "Hãy nhập ngày sinh tác giả!";
            }
            else if (txtAddress.Text.Equals(""))
            {
                mes.Text = "Hãy nhập địa chỉ tác giả!";
            }
            else if (txtDes.Text.Equals(""))
            {
                mes.Text = "Hãy nhập mô tả tác giả!";
            }
            else
            {
                bool isDone = dbHelper.addSong(drlUserName.Text, int.Parse(drlSubMenu.Text), int.Parse(drlCategory.Text), txtMusicName.Text, DateTime.Now.ToString("yyyy-MM-dd"), "nodata",
                txtAuthor.Text, txtDateBirth.Text, txtAddress.Text, txtDes.Text, int.Parse(drlGender.SelectedValue));
                if (isDone)
                {
                    Response.Redirect("Song_AddLyricsSong.aspx");
                }
                else
                {
                    mes.Text = "Hãy nhập đúng định dạng ngày sinh yyyy-MM-dd";
                }
            }
        }
            

       
    }
}