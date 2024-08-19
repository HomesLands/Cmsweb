using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Banhang.Admin
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADminID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    Label3.Visible = false;              
                    Label8.Text = "Welcome To " + " " + Session["ADminID"];
                    loadicon();
                }
            }
        }
        public void loadicon()
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
                Image3.ImageUrl = reader["Anhuser"].ToString();
            }
            reader.Close();
            conn1.Close();
        }

        protected void lnkCustomize_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {

        }
    }
}