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
    public partial class Song_Edit : System.Web.UI.Page
    {
        DBHelper dBHelper;
        int MusicID;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            dBHelper = new DBHelper();
            try
            {
                if (Request.QueryString.Get("MusicID") != null)
                {
                    MusicID = int.Parse(Request.QueryString.Get("MusicID"));
                    if (!IsPostBack)
                    {
                        DataTable dt = dBHelper.getMusicbyID(MusicID);
                      //  drlUserName.Text = dt.Rows[0]["UserName"].ToString();
                       // drlAuthor.Text = dt.Rows[0]["AuthorName"].ToString();
                       // drlCategory.SelectedValue = dt.Rows[0]["CategoryID"].ToString();
                       // drlSubMenu.SelectedValue = dt.Rows[0]["SubMenuID"].ToString();
                        txtMusicName.Text = dt.Rows[0]["MusicName"].ToString();
                    }
                }
        }catch(Exception ex)
            {
                mes.Text = "Có lỗi ";
           }
}

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtMusicName.Text.Equals(""))
            {
                mes.Text = "Hãy nhập tên bài hát!";
            }
            else if (FileUpload1.FileName == null)
            {
                mes.Text = "Bạn chưa nhập ảnh";
            }
            else
            {
                String Path = Server.MapPath("~/Images/");

                String filename = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Path + filename);
                bool isDone = dBHelper.editSong(drlUserName.Text, int.Parse(drlSubMenu.Text), int.Parse(drlCategory.Text), txtMusicName.Text, DateTime.Now.ToString("yyyy-MM-dd"), filename, int.Parse(drlAuthor.Text),MusicID);
                if (isDone)
                {
                    int id = dBHelper.getLastIdSong();
                    Response.Redirect("Song_AddLyricsSongByID.aspx?id=" + id + "");
                }
                else
                {
                    mes.Text = "Hãy nhập đúng định dạng ngày sinh yyyy-MM-dd";
                }
            }
        }
    }
}