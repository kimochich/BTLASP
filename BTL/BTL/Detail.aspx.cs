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
        LanguageDAO LanguageDAO;
        MusicDAO musicDAO;
        String musicID;
        protected void Page_Load(object sender, EventArgs e)
        {
            LanguageDAO = new LanguageDAO();
            musicDAO = new MusicDAO();
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

               
                musicID = Request.QueryString["musicID"];
                if (!IsPostBack) { 
                if(!musicID.Trim().Equals(""))
                { 
                
                ltrDetail.Text = musicDAO.getMusicDetailById(musicID,"1");
                
                hienthi();
                    }
                else
                {
                    ltrDetail.Text = "Cố lỗi !!!";
                }
                }

            }
        }

        private void hienthi()
        {
            drlLanguage.DataSource = LanguageDAO.getLanguage();
            drlLanguage.DataValueField = "LanguageID";
            drlLanguage.DataTextField = "Language";
            DataBind();
        }

        protected void drlLanguage_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
          
        }

        protected void btnLang_Click(object sender, EventArgs e)
        {
            String Language = drlLanguage.Text;
            ltrDetail.Text = musicDAO.getMusicDetailById(musicID, drlLanguage.SelectedValue);
            hienthi();
            drlLanguage.Text = Language;
           
        }
    }
}