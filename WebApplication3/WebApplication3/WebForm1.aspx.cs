using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadComment();//HIển thị các entry comment trước đó
        }

        protected void Btn_GoiND_Click(object sender, EventArgs e)
        {
            //lưu nội dung comment mới vài file
            //tạo file theo đường dẫn của website
            string sfile=Server.MapPath(@"\")+"data.txt";
            //mở file nếu khác null (mở được) thì bắt đầu thêm
            using (StreamWriter writer=new StreamWriter(sfile,true))
            {
                writer.WriteLine(txtTieuDe.text);
            }
            }
    }
}