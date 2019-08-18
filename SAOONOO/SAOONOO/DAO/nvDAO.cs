using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SAOONOO.DAO
{
    public class nvDAO
    {
        string connectionString =
        ConfigurationManager.ConnectionStrings["THLVN"].ConnectionString;

        public bool CheckID(string id)
        {
            string sql = @"SELECT COUNT(*) FROM NHANVIEN WHERE manv = @ma";
            using (SqlConnection connection =
            new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@ma", id);
                connection.Open();
                int count = (int)command.ExecuteScalar();
                return (count >= 1);
                //if (count >= 1) return true;
                //else return false;
            }
        }
        public bool InsertNV(DTO.nv nv)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sql = @"INSERT INTO NHANVIEN(manv,hoten,ngaysinh,gioitinh,sdt,diachi,vitrilamviec)
                            VALUES(@mnv,@ht,@ns,@gt,@dt,@dc,@vtlv)";
                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.Parameters.AddWithValue("@mnv", nv.Manv);
                cmd.Parameters.AddWithValue("@ht", nv.Hoten);
                cmd.Parameters.AddWithValue("@ns", nv.Ngaysinh);
                cmd.Parameters.AddWithValue("@gt", nv.Gioitinh);
                cmd.Parameters.AddWithValue("@dt", nv.Sdt);
                cmd.Parameters.AddWithValue("@dc", nv.Diachi);
                cmd.Parameters.AddWithValue("@vtlv", nv.Vitrilamviec);
                connection.Open();

                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }
    }
}