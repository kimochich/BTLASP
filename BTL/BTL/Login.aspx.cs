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
    public partial class Login : System.Web.UI.Page
    {
        Account acc;
        AccountDAO dao;
        protected void Page_Load(object sender, EventArgs e)
        {
            dao = new AccountDAO();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txtUserName.Text.Trim().Equals(""))
            {
                mess.Text = "Bạn không được bỏ trống username !!";
            }else if(txtPass.Text.Trim().Equals(""))
            {
                mess.Text = "Bạn không được bỏ trống password !!";
            }
            else
            {
                acc = dao.checkAccount(txtUserName.Text,txtPass.Text);
                if(acc.UserNamre==null)
                {
                    mess.Text = "Sai tên tài khoản hoặc mật khẩu ";

                }
                else
                {
                    Session["user"] = acc;
                    if(acc.Role==true)
                    {
                        Response.Redirect("ClientAdmin/TrangChuAdmin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
            }
        }
    }
}