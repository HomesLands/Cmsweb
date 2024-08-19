using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Project.Admins
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (!IsPostBack)
            {
                Label2.Visible = false;               
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("Select * from Admin where UserName='" + TextBox1.Text.Trim() + "' and PassWord='" + TextBox2.Text.Trim() + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    Session["ADminID"] = TextBox1.Text;
                    if (data.Rows.Count > 0)
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
                                Label2.Text = reader["Manager"].ToString();
                                Label3.Text = reader["StatusPass"].ToString();
                            }
                            reader.Close();
                            conn1.Close();
                            if (Label3.Text.Equals("0"))
                            {
                                if (Label2.Text.Equals("kho"))
                                {
                                    Response.Redirect("~/Admin/YCVT.aspx");
                                }
                                else if (Label2.Text.Equals("ketoan"))
                                {
                                    Response.Redirect("~/Admin/YCVT.aspx");
                                }
                                else if (Label2.Text.Equals("muahang") || Label2.Text.Equals("giaonhan") || Label2.Text.Equals("it") || Label2.Text.Equals("thukho") || Label2.Text.Equals("thuquy") || Label2.Text.Equals("nvhcns"))
                                {
                                    Response.Redirect("~/Admin/YCVT.aspx");
                                }
                                else if (Label2.Text.Equals("nhanvien") || Label2.Text.Equals("gsat") || Label2.Text.Equals("gsd") || Label2.Text.Equals("gsck") || Label2.Text.Equals("gs"))
                                {
                                    Response.Redirect("~/Admin/YCVT.aspx");
                                }
                                else if (Label2.Text.Equals("thohan") || Label2.Text.Equals("thocokhi") || Label2.Text.Equals("baotridien") || Label2.Text.Equals("baotricokhi") || Label2.Text.Equals("QSQC"))
                                {
                                    Response.Redirect("~/Admin/YCVT.aspx");
                                }
                                else if (Label2.Text.Equals("chihuytruong"))
                                {
                                    Response.Redirect("~/Admin/Muahang.aspx");
                                }
                                else if (Label2.Text.Equals("ppda") || Label2.Text.Equals("tpkehoach") || Label2.Text.Equals("tpda") || Label2.Text.Equals("tpmh") || Label2.Text.Equals("ktt") || Label2.Text.Equals("tpns"))
                                {
                                    Response.Redirect("~/Admin/Muahang.aspx");
                                }
                                else if (Label2.Text.Equals("giamdoc"))
                                {
                                    Response.Redirect("~/Admin/Muahang.aspx");
                                }
                                else if (Label2.Text.Equals("admin"))
                                {
                                    Response.Redirect("~/Admin/Muahang.aspx");
                                }
                                else if (Label2.Text.Equals(""))
                                {
                                    Response.Redirect("~/Admin/login.aspx");
                                }
                            }
                            else if (Label3.Text.Equals("1"))
                            {
                                Response.Redirect("~/Admin/NewPass.aspx");
                            }
                    }                   
                    else
                    {
                        Label1.Text = "Sai Username và Password";
                    }
                }
            }
        }

        protected void quenpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ResetPass.aspx");
        }
    }
}