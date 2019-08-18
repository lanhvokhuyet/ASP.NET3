using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SAOONOO.DAO
{
    public class banDAO
    {
        string connectionString =
       ConfigurationManager.ConnectionStrings["THLVN"].ConnectionString;
        public bool Check(string maBan)
        {
            string sql = @"SELECT COUNT(*) FROM BAN WHERE maban = @mb";
            using (SqlConnection connection =
            new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@mb", maBan);
                connection.Open();
                int count = (int)command.ExecuteScalar();
                return (count >= 1);
                //if (count >= 1) return true;
                //else return false;
            }
        }
        public bool DeleteNVB(String mban)
        {
            using (SqlConnection connection =
            new SqlConnection(connectionString))
            {
                string sql = @"DELETE FROM BAN WHERE maban = @mb";
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.Parameters.AddWithValue("@mb", mban);
                connection.Open();
                int result = cmd.ExecuteNonQuery();
                if (result >= 1)
                {
                    return true;
                }
            }
            return false;
        }
    }
}