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
            }else if(FileUpload1.FileName==null)
            {
                mes.Text = "Bạn chưa nhập ảnh";
            }
            else 
            {
                String Path = Server.MapPath("~/Images/");

                String filename = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Path + filename);
                bool isDone = dbHelper.addSong(drlUserName.Text, int.Parse(drlSubMenu.Text), int.Parse(drlCategory.Text), txtMusicName.Text, DateTime.Now.ToString("yyyy-MM-dd"), filename,int.Parse(drlAuthor.Text));
                if (isDone)
                {
                   int id = dbHelper.getLastIdSong();
                    Response.Redirect("Song_AddLyricsSongByID.aspx?id="+id+"");
                }
                else
                {
                    mes.Text = "Hãy nhập đúng định dạng ngày sinh yyyy-MM-dd";
                }
            }
        }
            

       
    }
}