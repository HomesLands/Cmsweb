using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TBE.Admin
{
    public partial class NewPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Session["ADminID"].ToString();
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("Select * from Admin where PassWord='" + TextBox1.Text.Trim() + "' and UserName='" + username + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    if (data.Rows.Count > 0)
                    {
                        Label3.Text = "Vui lòng đổi Password được cung cấp để bảo mật tài khoản!";
                    }
                    else
                    {
                        using (var conn2 = new SqlDataAdapter("Update Admin set PassWord='" + TextBox1.Text.Trim() + "', StatusPass='0'  where  UserName='" + username + "' ", cnn))
                        {
                            if (TextBox1.Text.Equals(TextBox2.Text))
                            {
                                var data1 = new DataTable();
                                conn2.Fill(data1);
                                Response.Redirect("~/Admin/Login.aspx");
                            }
                            else
                            {
                                Label3.Text = "Password không trùng khớp.";
                            }
                        }
                    }                
                }
            }
        }
    }
}
