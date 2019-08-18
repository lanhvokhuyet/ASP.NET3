using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SAOONOO
{
    public partial class XOABAN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                load_data();
            }
        }
        private void load_data()
        {
            SqlConnection con = new SqlConnection("Data Source=MAYCHI\\SQLEXPRESS;Initial Catalog=THLVN;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from BAN", con);
            DataTable tb = new DataTable();
            da.Fill(tb);

            gvBan.DataSource = tb;
            gvBan.DataBind();
        }

        protected void gvBan_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                String id = gvBan.DataKeys[e.RowIndex].Value.ToString();
                Response.Write("Đã xóa thành công  " + id);
                SqlConnection con = new SqlConnection("Data Source=MAYCHI\\SQLEXPRESS;database=THLVN;Integrated security=true;");
                SqlCommand cmd = new SqlCommand("delete from BAN where maban='" + id + "'", con);

                con.Open();
                cmd.ExecuteNonQuery();

                load_data();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Bạn Không Thể Xoá Được...')</script>");
            }
        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            string maban = (sender as Button).CommandArgument;
            DAO.banDAO xoaDAO = new DAO.banDAO();
            bool result = xoaDAO.DeleteNVB(maban);
            if (result)
            {
                lblThongbao.Text = "Đã xóa thành công người dùng: " + maban;
                load_data();
            }
            else
            {
                lblThongbao.Text = "Xóa không thành công, vui lòng kiểm tra lại";
            }
        }



        

    }
}