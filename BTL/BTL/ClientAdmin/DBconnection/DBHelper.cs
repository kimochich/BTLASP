using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

namespace BTL.ClientAdmin.DBconnection
{
    public class DBHelper
    {
        private SqlConnection connection;
        public DBHelper()
        {
            String strCon = @"Data Source=DESKTOP-RPK6PAD\SQLEXPRESS01;Initial Catalog=BTLASP;Integrated Security=True";
            connection = new SqlConnection(strCon);
        }

        public bool addSong(String userName, int subMenu, int categoryId, String musicName, String createDate, String imageUrl,
            String authorName, String dateBirth, String address, String des, int gender
            ) {
            try
            {
                connection.Open();
                String sqlQueryAddAuthor = "INSERT INTO author VALUES('" + authorName + "','" + dateBirth + "','" + address + "','" + des + "','" + gender + "')";
                SqlCommand cmd = new SqlCommand(sqlQueryAddAuthor, connection);
                cmd.ExecuteNonQuery();
                String sqlQueryAddMusic = "INSERT INTO music VALUES('" + userName + "','" + subMenu + "','" + categoryId + "','" + musicName + "','" + createDate + "','" + imageUrl + "')";
                cmd = new SqlCommand(sqlQueryAddMusic, connection);
                cmd.ExecuteNonQuery();
                
                connection.Close();
                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }
       
    }
}