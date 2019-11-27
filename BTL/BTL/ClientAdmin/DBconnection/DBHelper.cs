using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
namespace BTL.ClientAdmin.DBconnection
{
    public class DBHelper
    {
        private SqlConnection connection;
        public DBHelper()
        {
            //mai sửa nhở đổi cái strcon nehs, t biết mà. có gì upcode len k dk thì nt cho t nhé
            // uh , t backup trước. mà t đíu hiểu sao m code sửa gì ở kia mà bị confict thế @@ chịu é thội kệ đi đi ngủ đi mai quây tiế[ ok m
            String strCon = @"Data Source=DESKTOP-6PC73Q3\SQLEXPRESS;Initial Catalog=BTLASP;Integrated Security=True;MultipleActiveResultSets=True;";
            connection = new SqlConnection(strCon);
           
        }

        public  DataTable GetDataTable(String sql)
        {
            DataTable dt = new DataTable();
        
            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, connection);
            da.Fill(dt);
            connection.Close();
            return dt;
        }
        public  SqlDataReader GetSqlDataReader(String sql)
        {

          
            connection.Open();
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataReader dataReader = cmd.ExecuteReader();

            return dataReader;

        }

        public Boolean ExcuteNonQuery(String sql)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch(SqlException ex)
            {
                return false;
            }
            return true;
        }

        public bool addSong(String userName, int subMenu, int categoryId, String musicName, String createDate, String imageUrl,
            int authorID
            ) {
            try
            {

                connection.Open();
                String sqlQueryAddMusic = "INSERT INTO music VALUES(N'" + userName + "','" + subMenu + "','" + categoryId + "',N'" + musicName + "','" + createDate + "','" + imageUrl + "')";
               SqlCommand cmd1 = new SqlCommand(sqlQueryAddMusic, connection);
                cmd1.ExecuteNonQuery();
                int a = 0;
                String sqlQueryAddAuthor = "SELECT top 1 MusicID from Music Order by MusicID DESC";
                SqlCommand cmd = new SqlCommand(sqlQueryAddAuthor, connection);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    a = int.Parse(sqlDataReader["MusicID"].ToString());
                }
                String sqlQueryAddMusicAuthor = "INSERT INTO Music_Author VALUES('" +a+ "','" + authorID + "')";
                cmd1 = new SqlCommand(sqlQueryAddMusicAuthor, connection);
                cmd1.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (SqlException ex)
            {
                
                return false;
            }
        }
        public bool editSong(String userName, int subMenu, int categoryId, String musicName, String createDate, String imageUrl,
            int authorID, int musicID)
        {
            try
            {

                connection.Open();
                String sqlQueryAddMusic = "UPDATE music SET UserName=N'"+userName+"',SubMenuID ="+subMenu+",CategoryID= "+categoryId+", MusicName=N'"+musicName+"', DateCreated='"+createDate+"',Image='"+imageUrl+"' where musicID = "+musicID+"";
                SqlCommand cmd1 = new SqlCommand(sqlQueryAddMusic, connection);
                cmd1.ExecuteNonQuery();  
                String sqlQueryAddMusicAuthor = "UPDATE Music_Author SET authorID=" + authorID + " where MusicID =" + musicID + " ";
                cmd1 = new SqlCommand(sqlQueryAddMusicAuthor, connection);
                cmd1.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (SqlException ex)
            {

                return false;
            }
        }
        public int getLastIdSong()
        {
            try
            {
                connection.Open();
                int a = 0;
                String sqlQueryAddAuthor = "SELECT top 1 MusicID from Music Order by MusicID DESC";
                SqlCommand cmd = new SqlCommand(sqlQueryAddAuthor, connection);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while(sqlDataReader.Read())
                {
                    a = int.Parse(sqlDataReader["MusicID"].ToString());
                }
                connection.Close();
                return a;
            }
            catch (SqlException)
            {
                return 0;
            }
        }


        public bool insertLyric(int MusicID, int languageID, String lyricText)
        {
            try
            {
                connection.Open();
                String sql = "insert into Lyrics values ('" + MusicID + "','" + languageID + "',N'" + lyricText + "')";
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }
        public Boolean edittLyric(int lyricsId , int languageID, String lyricText)
        {
            try
            {
                connection.Open();
                String sql = "update Lyrics set LanguageID="+languageID+",Lyric =N'"+lyricText+"' where LyricsID="+lyricsId+" ";
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }
        public DataTable getMusicbyID(int id)
        {

            DataTable dt = new DataTable();
            String sql = "Select * from Music inner join Music_Author on Music.MusicID= Music_Author.MusicID inner join Author on  Author.AuthorID = Music_Author.AuthorID where Music.MusicID =" + id+"";
            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, connection);
            da.Fill(dt);
            connection.Close();
            return dt;
        }
    }

    
}