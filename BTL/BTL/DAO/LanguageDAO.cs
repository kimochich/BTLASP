using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL.ClientAdmin.DBconnection;
using System.Data.SqlClient;
using System.Data;
using BTL.Models;

namespace BTL.DAO
{
    public class LanguageDAO
    {
        DBHelper db;
        public LanguageDAO()
        {
            db = new DBHelper();
        }

        public DataTable getLanguage()
        {
            String Sql = "select * from Languages";
            DataTable dt = db.GetDataTable(Sql);
            return dt;
        }

    }
}