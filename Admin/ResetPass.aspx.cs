using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace TBE.Admin
{
    public partial class ResetPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("Select * from Admin where Email='" + TextBox1.Text.Trim() + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    if (data.Rows.Count > 0)
                    {                       
                        string allowedChars = "";
                        allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
                        allowedChars += "1,2,3,4,5,6,7,8,9,0";
                        char[] sep = { ',' };
                        string[] arr = allowedChars.Split(sep);
                        string passwordString = "";
                        string temp = "";
                        Random rand = new Random();
                        for (int i = 0; i < Convert.ToInt32(9); i++)

                        {
                            temp = arr[rand.Next(0, arr.Length)];
                            passwordString += temp;
                        }
                        string abc = passwordString;
                        Label2.Text = abc;

                        string to = TextBox1.Text; //To address    
                        string from = "hethongcms@gmail.com"; //From address    
                        MailMessage message = new MailMessage(from, to);

                        string mailbody = "Password:" + Label2.Text + "<br/>";

                        string mailbody4 = "Chú Ý Không Reply lại Mail.";
                        message.Subject = "<Noreply> Reset Password Thành Công";
                        message.Body = mailbody + mailbody4;
                        message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                        System.Net.NetworkCredential basicCredential1 = new
                        System.Net.NetworkCredential("hethongcms@gmail.com", "rbkcpupaktnjshlo");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = basicCredential1;
                        try
                        {
                            Button1.Visible = false;
                            client.Send(message);
                        }

                        catch (Exception ex)
                        {
                            throw ex;
                        }
                        using (var conn2 = new SqlDataAdapter("Update Admin set PassWord='" + Label2.Text.Trim() + "', StatusPass='1'  where  Email='" + TextBox1.Text.Trim() + "' ", cnn))
                            {
                                var data1 = new DataTable();
                                conn2.Fill(data1);
                                Response.Redirect("~/Admin/Login.aspx");
                        }                        
                    }
                    else
                    {                      
                        Label1.Text = "Tài khoản gmail không tồn tại trong hệ thống";
                    }
                }
            }
        }
    }
}