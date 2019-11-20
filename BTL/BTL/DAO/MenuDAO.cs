using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL.ClientAdmin.DBconnection;
using System.Data.SqlClient;
using System.Data;
namespace BTL.DAO
{
    public class MenuDAO
    {
        DBHelper db;
        public MenuDAO()
        {
            db = new DBHelper();
        }
        public String loadMenuCha()
        {
            String sql = "select * from Menu";
            String s = "";
            DataTable dt = db.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += " <li class=''><a href='Home.aspx?idcha="+ dt.Rows[i]["MenuId"] + "'><i class='fa fa-folder - open'></i>&nbsp;" + dt.Rows[i]["MenuName"].ToString() + "</a></li>";
            }
            return s;
        }
        public String loadMenuCon(String id)
        {
            String sql = "select * from Sub_Menu where MenuId="+id+"";
            String s = "";
            DataTable dt = db.GetDataTable(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += " <li class='m  '><a href='#' >" + dt.Rows[i]["SubMenuName"].ToString() + "</a></li>";
            }
            return s;
        }

        
    }
}