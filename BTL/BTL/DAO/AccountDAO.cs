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
    public class AccountDAO
    {
        DBHelper db;
        public AccountDAO()
        {
            db = new DBHelper();
        }

        public Account checkAccount(String user ,String pass)
        {
            Account acc = new Account();
            String sql = "select * from Account where UserName ='"+user+"' and Password ='"+pass+"'";
          
               
                SqlDataReader dr = db.GetSqlDataReader(sql);
                while(dr.Read())
                {
                    acc.UserNamre = (String)dr["UserName"];
                    acc.Address = (String)dr["Address"];
                    acc.DataOfBirth = (String)dr["DateOfBirth"].ToString();
                    acc.Gender = (Boolean)dr["Gender"];
                    acc.Role = (Boolean)dr["Role"];
                }
            
            return acc;

        }

        public Boolean Register(Account acc)
        {
            String sql = "insert into Account values('"+acc.UserNamre+ "','" 
                + acc.Password + "','" + acc.Address + "','" 
                + acc.DataOfBirth + "','"+acc.Gender+"','false') ";
            Boolean kq=  db.ExcuteNonQuery(sql);
            return kq;  
        }
    }
}