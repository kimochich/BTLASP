using BTL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.ClientAdmin
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Session["user"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                Account acc = (Account)Session["user"];
                ltrAdminName.Text = acc.UserNamre;
            }
        }
    }
}