using BTL.DAO;
using BTL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class pageMaster : System.Web.UI.MasterPage
    {
        MenuDAO menu = new MenuDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            ltrMenu.Text = menu.loadMenuCha();
            if(Session["user"]==null)
            {
                ltrLogin.Text = "<ul class=\"nav navbar-nav navbar-right\">                    <li class=\"\"><a href=\"Register.aspx\"><i class=\"fa fa-key fa-fw\">&nbsp;</i>Đăng ký</a></li>                    <li class=\"\"><a href=\"Login.aspx\"><i class=\"fa fa-lock fa-fw\">&nbsp;</i>Đăng nhập</a></li>                </ul>";
            }
            else
            {
                Account acc =(Account) Session["user"];
                ltrLogin.Text = " <ul class=\"navbar-nav right\" style=\"list-style-type:none;\">                            <li class=\"dropdown user user-menu\">                                <a style=\"text-decoration:none; margin-top:5px\" href=\"#\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">                                    <img style=\"margin-top: 5px;\" height=\"40px\" width=\"40px\" src=\"../dist/img/user2-160x160.jpg\" class=\"user-image\" alt=\"User Image\" />                                    <span class=\"hidden-xs\">"+acc.UserNamre+"</span>                                </a>                            </li>                    </ul>";
            }
        }
    }
}