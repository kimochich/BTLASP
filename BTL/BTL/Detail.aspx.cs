using BTL.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
   
    public partial class Detail : System.Web.UI.Page
    {
        MusicDAO musicDAO;
        protected void Page_Load(object sender, EventArgs e)
        {
            musicDAO = new MusicDAO();
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                
                String musicID = Request.QueryString["musicID"];
                if(!musicID.Trim().Equals(""))
                { 
               
                ltrDetail.Text = musicDAO.getMusicDetailById(musicID,"1");
                }
                else
                {
                    ltrDetail.Text = "Cố lỗi !!!";
                }
            }
        }
    }
}