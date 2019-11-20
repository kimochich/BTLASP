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
    public partial class Register : System.Web.UI.Page
    {
        AccountDAO dao;
        protected void Page_Load(object sender, EventArgs e)
        {
            dao = new AccountDAO();
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
               if(txtUserName.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống username !";
            }
            else if(txtPassWord.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống password !";
            }
            else if (txtAddress.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống địa chỉ !";
            }
            else if (txtDateOfBirth.Text.Trim().Equals(""))
            {
                mess.Text = "Không được để trống ngày sinh !";
            }
            else
            {
                Account acc = new Account();
                acc.UserNamre = txtUserName.Text;
                acc.Password = txtPassWord.Text;
                acc.Address = txtAddress.Text;
                acc.DataOfBirth = txtDateOfBirth.Text;
                if(rdGender.SelectedItem.Value=="nam")
                {
                    acc.Gender = true;
                }
                else
                {
                    acc.Gender = false;
                }
                if(dao.Register(acc))
                {
                    mess.Text = "Đăng kí thành công !";

                }
                else
                {
                    mess.Text = "Trùng tài khoản !";
                }
            }

        }
    }
}