using System;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using ClosedXML.Excel;
using System.Data.OleDb;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Banhang.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            load();
        }

        public void load()
        {
            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(constr);
            string username = Session["ADminID"].ToString();
            string sql = "select  * from Admin where UserName='" + username + "'";
            SqlCommand cmd1 = new SqlCommand(sql, conn1);
            conn1.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                Label3.Text = reader["Manager"].ToString();
            }
            reader.Close();
            conn1.Close();
            if (Label3.Text.Equals("khach"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                HyperLink4.Visible = false;                
                vvv.Visible = false;
                hr.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("kho"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("ketoan"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("nvpda"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
            }
            if (Label3.Text.Equals("nvhcns"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("thuquy"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("thukho"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                HyperLink5.Visible = false;
                HyperLink16.Visible = false;
                HyperLink17.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("it"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("muahang"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("giaonhan"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                HyperLink5.Visible = false;
                HyperLink17.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("chihuytruong"))
            {
                HyperLink1.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
            }
            if (Label3.Text.Equals("tpkehoach"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("tpmh"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("ktt"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("tpns"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("tpda"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
            }
            if (Label3.Text.Equals("ppda"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink13.Visible = false;
                hr.Visible = false;
            }
            if (Label3.Text.Equals("giamdoc"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                HyperLink4.Visible = false;
            }
            if (Label3.Text.Equals("admin"))
            {
                HyperLink1.Visible = false;
                HyperLink3.Visible = false;
                HyperLink13.Visible = false;
            }
            if (Label3.Text.Equals("nhanvien") || Label3.Text.Equals("gsat") || Label3.Text.Equals("gsd") || Label3.Text.Equals("gsck") || Label3.Text.Equals("gs"))
            {
                HyperLink13.Visible = false;
                HyperLink3.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                hr.Visible = false;
                Li1.Visible = false;
            }
            if (Label3.Text.Equals("thohan") || Label3.Text.Equals("thocokhi") || Label3.Text.Equals("baotridien") || Label3.Text.Equals("baotricokhi") || Label3.Text.Equals("QSQC"))
            {
                HyperLink13.Visible = false;
                HyperLink3.Visible = false;
                HyperLink4.Visible = false;
                vvv.Visible = false;
                HyperLink6.Visible = false;/*nhập kho*/
                HyperLink7.Visible = false;/*kiem ke*/
                HyperLink8.Visible = false;/*luan chuyen*/
                HyperLink10.Visible = false;/*xuất kho*/
                HyperLink11.Visible = false;/*in*/
                HyperLink9.Visible = false;/*thêm sản phẩm*/
                HyperLink12.Visible = false;/*phân hệ duyệt*/
                hr.Visible = false;
                Li1.Visible = false;
            }
        }
    }
}