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
    public partial class ThemNV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadDataToDropDownList();
                ddlVitrilamviec.Items.Clear();
                ddlVitrilamviec.Items.Add("Thu ngân");
                ddlVitrilamviec.Items.Add("Pha chế");
                ddlVitrilamviec.Items.Add("Phục vụ");
                ddlGioitinh.Items.Clear();
                ddlGioitinh.Items.Add("Nam");
                ddlGioitinh.Items.Add("Nữ");
            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Lấy các giá trị từ giao diện
                string manv = txtMaNV.Text;
                string hoten = txtHoTen.Text;
                string ngaysinh = txtNgaySinh.Text;
                string diachi = txtDiaChi.Text;
                string sdt = txtSDT.Text;
                
               // bool gioitinh = Boolean.Parse(ddlGioitinh.SelectedValue);
                string vitrilamviec = ddlVitrilamviec.Text;

                DAO.nvDAO NVDAO = new DAO.nvDAO();
                // Kiểm tra username này đã tồn tại trong CSDL chưa
                bool exist = NVDAO.CheckID(manv);
                if (exist)
                {
                    lblThongBao.Text = "Mã nhân viên đã tồn tại";
                }
                else
                {
                    // Thực hiện ghi xuống CSDL
                    DTO.nv NV = new DTO.nv()
                    {
                        Manv = manv,
                        Hoten = hoten,
                        Ngaysinh = ngaysinh,
                        
                        //Gioitinh = (Boolean)gioitinh,
                        Sdt = sdt,
                        Diachi = diachi,
                        Vitrilamviec = vitrilamviec
                    };
                    bool result = NVDAO.InsertNV(NV);
                    if (result)
                    {
                        lblThongBao.Text = "Thêm nhân viên thành công!";
                    }
                    else
                    {
                        lblThongBao.Text = "Có lỗi. Vui lòng thử lại sau";
                    }
                }
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }


       

        

       

    }
}