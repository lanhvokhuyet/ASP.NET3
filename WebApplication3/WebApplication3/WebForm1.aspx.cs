using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text.RegularExpressions;
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

        private void ReadComment()
        {
            string sfile = Server.MapPath(@"\") + "data.txt";
            
            using(StreamReader reader=new StreamReader(sfile))
            {
                
                string snoidung = reader.ReadToEnd();
                string[] delimiter = {"#END"};
                string[] sArr = snoidung.Split(delimiter,
                    StringSplitOptions.RemoveEmptyEntries);
                foreach(string s in sArr)
                {
                    string stemp;
                    stemp = Regex.Replace(s, @"\r\n", @"<br/");
                    string entry = string.Format("<tr><td colspan=\"2\">{0} </td></tr>",stemp);
                    entryComent.InnerHtml += entry;
                }

            }
        }

        protected void Btn_GoiND_Click(object sender, EventArgs e)
        {
            //lưu nội dung comment mới vài file
            //tạo file theo đường dẫn của website
            string sfile=Server.MapPath(@"\")+"data.txt";
            //mở file nếu khác null (mở được) thì bắt đầu thêm
            using (StreamWriter writer=new StreamWriter(sfile,true))
            {
                writer.WriteLine(txtTieuDe.Text);
                writer.WriteLine(txtHoTen.Text);
                writer.WriteLine(txtEmail.Text);
                writer.WriteLine(txtNoiDung.Text);
                writer.WriteLine("#END");
                writer.Close();
            }
            }
    }
}