using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SAOONOO.DAO
{
    public class LoginDAO
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["THLVN"].ConnectionString;
        public bool CheckLogin(string userName, string passWord)
        {
            string sql = @"SELECT COUNT(*) FROM TKQL WHERE userName = @us AND passWord = @pass";
            using (SqlConnection connection =
            new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(sql, connection);
                
                command.Parameters.AddWithValue("@us", userName);
                command.Parameters.AddWithValue("@pass", passWord);
                connection.Open();
                int count = (int)command.ExecuteScalar();
                return (count >= 1);
            }
        }
        public DataTable LayTKQL()
        {
            DataTable table = new DataTable();
            SqlConnection connect = new SqlConnection(connectionstring);
            SqlCommand command = new SqlCommand("select * from TKQL", connect);
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(table);
            return table;
        }
        public DTO.Quanly ChonQlTheoUserQL(string us)
        {
            using (SqlConnection connect = new SqlConnection(connectionstring))
            {
                string sql = @"select *FROM TKQL where userName=@us";
                SqlCommand cmd = new SqlCommand(sql, connect);
                cmd.Parameters.AddWithValue("@us", us);

                connect.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    DTO.Quanly ql = new DTO.Quanly()
                    {
                        UserName=(string)reader["userName"],
                        PassWord=(string)reader["passWord"],
                        Hoten=(string)reader["hoten"],
                        Chucvu=(string)reader["chucvu"]  
                    };
                    return ql;
                }
            }
            return null;
        }
    }
}