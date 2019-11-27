using BTL.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Home : System.Web.UI.Page
    {
        MenuDAO menuDAO;
        MusicDAO musicDAO;
        protected void Page_Load(object sender, EventArgs e)
        {
            menuDAO = new MenuDAO();
                musicDAO = new MusicDAO();
                ltrMenuCon.Text = menuDAO.loadMenuCon("1");
                ltrMusic.Text = musicDAO.getItemRandom();
            //DataList1.DataSource = musicDAO.getItemNew();
            //DataBind();
            ltrRight.Text = musicDAO.getItemNew();
            
        }
    }
}