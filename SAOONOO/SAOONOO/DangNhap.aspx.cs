using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace SAOONOO
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }
        private bool CheckAccount (string UserName,string Password)
        {
            bool boolReturnValue = false;
            string st = "Data Source=MAYCHI\\SQLEXPRESS;Initial Catalog=THLVN;Integrated Security=True";
            SqlConnection cnn=new SqlConnection(st);
            string Sql="select userName,passWord from TKQL where userName='"+UserName+"' and passWord ='"+Password+"' ";
            SqlCommand cmd=new SqlCommand(Sql,cnn);
            SqlDataReader dr;
            cnn.Open();
            dr=cmd.ExecuteReader();
            if(dr.Read())
            {
                if ((UserName == dr["userName"].ToString()) & (Password == dr["passWord"].ToString()))
                {
                    boolReturnValue = true;
                }
                dr.Close();
                return boolReturnValue;
            }
            return boolReturnValue;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (CheckAccount(Login1.UserName, Login1.Password))
            {

                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                
                e.Authenticated = true;
                // Response.Redirect();
                Login1.Visible = false;
          
            }
            else
            {
                e.Authenticated = false;
            }
        }


       /* protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string us=txtTenDangNhap.Text;
            string pass=txtMatKhau.Text;
            DAO.LoginDAO userDAO = new DAO.LoginDAO();
            bool exist = userDAO.CheckLogin(us, pass);
            if (exist)
            {
                Session["UserName"] = us;
                Response.Redirect("~/QLNV.aspx");
            }
            else
            {
                lblThongBao.Text = "Tài khoản hoặc mật khẩu chưa hợp lệ.Vui lòng nhập lại";
            }
        }*/
    }
}