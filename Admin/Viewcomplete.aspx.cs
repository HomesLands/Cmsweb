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
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Drawing;
using System.Drawing.Imaging;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Reflection.Emit;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Office2010.Excel;
using DocumentFormat.OpenXml.Bibliography;

namespace Banhang.Admin
{
    public partial class Viewcomplete : System.Web.UI.Page
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
                    kiemtralinksai();
                    Label3.Visible = false;
                    Label7.Visible = false;
                    Label8.Text = "Welcome To " + " " + Session["ADminID"];
                    load1();
                    load();
                    load2();
                    Label10.Visible = false;
                    Label11.Visible = false;
                    Label12.Visible = false;
                    manotification.Visible = false;
                    nycnotification.Visible = false;
                    managernotification.Visible = false;
                    loadfg();
                    Label37.Visible = false;
                    Label38.Visible = false;
                    Label39.Visible = false;
                    Label40.Visible = false;
                    Label41.Visible = false;
                    Label42.Visible = false;
                    Label43.Visible = false;
                    Label44.Visible = false;
                    Label45.Visible = false;
                    Label46.Visible = false;
                    Label47.Visible = false;
                    Label48.Visible = false;
                    loaddonduyet();
                    loaddonhuy();
                    manager.Visible = false;
                    Label49.Visible = false;
                    Label50.Visible = false;
                    Label51.Visible = false;
                    Label52.Visible = false;
                    Label53.Visible = false;
                    Label54.Visible = false;
                    Label55.Visible = false;
                    Label13.Visible = false;
                    kho1.Visible = false;
                    kho2.Visible = false;
                    kho3.Visible = false;
                    kho4.Visible = false;
                    hotenad.Visible = false;
                    loadicon();
                    statusyc.Visible = false;
                    xuatphieuthieu.Visible = false;
                    huy.Visible = false;
                    donxuat1.Visible = false;
                    xyz.Visible = false;
                    donyeucauvattu.Visible = false;
                    loadkiemtra();
                    Spthieu.Visible = false;
                    loadkiemtra1();
                    Button2.Visible = false;
                    xyz.Visible = false;
                    taodonxuatthieu.Visible = false;
                    Button3.Visible = false;
                    Label1.Visible = false;
                    thoat.Visible = false;
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
                Image4.ImageUrl = reader["Anhuser"].ToString();
            }
            reader.Close();
            conn1.Close();
        }
        public void kiemtralinksai()
        {
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-1";
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("Select * from vattuyeucau where Mahoadon='" + madon + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    if (data.Rows.Count > 0)
                    {

                    }
                    else
                    {
                        //  Response.Write("<Script>alert('Link Liên Kết Không Tồn Tại Trong Hệ Thống. Vui Lòng Check Lại, Hoặc Liện Hệ Admin.')</Script>");
                        Response.Redirect("~/Admin/Chantruycap.aspx");
                    }
                }
            }
        }

 
        public void loadkiemtra()
        {
            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn2 = new SqlConnection(constr);
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-1";
            string sql2 = "SELECT * from vattuyeucau  where Mahoadon='" + madon1 + "' ";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            conn2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                donxuat1.Visible = true;
                Button1.Visible = false;
                xyz.Visible = true;
                abc.Visible = false;
                donyeucauvattu.Visible = true;
            }
            reader2.Close();
            conn2.Close();
        }

        public void loadkiemtrainsertphieuchua()
        {
            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn2 = new SqlConnection(constr);
            string madon = Request.QueryString["idnsx"].ToString();
            string sql2 = "SELECT * from Phieuycvt where Mahoadon='" + madon + "' ";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            conn2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                string ha = reader2["StatusYcvt"].ToString();
                if(ha.Equals("Đã Duyệt1"))
                {                   
                    xyz.Visible = false;
                    Image7.ImageUrl = "../AnhUser/xuatkho.jpg";
                }
            }
            reader2.Close();
            conn2.Close();
        }

        public void loadkiemtra1()
        {
            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn2 = new SqlConnection(constr);
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-thieu";
            string sql2 = "SELECT * from vattuyeucau  where Mahoadon='" + madon1 + "' ";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            conn2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                Spthieu.Visible = true;
            }
            reader2.Close();
            conn2.Close();
        }
        protected void load()
        {
            string madon = Request.QueryString["idnsx"].ToString();
            string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(connectionstring);
            string sql = "select  * from Phieuycvt where Mahoadon='" + madon + "'  ";
            SqlCommand cmd1 = new SqlCommand(sql, conn1);
            cmd1.Parameters.AddWithValue("@masp", madon);
            conn1.Open();
            SqlDataReader reader = cmd1.ExecuteReader();

            SqlConnection conn2 = new SqlConnection(connectionstring);
            SqlCommand cmd2 = new SqlCommand("SELECT * from Phieuycvt  where Mahoadon='" + madon + "' ", conn2);
            SqlDataAdapter adapter2;
            adapter2 = new SqlDataAdapter(cmd2);

            DataSet dt2 = new DataSet();
            adapter2.Fill(dt2, "Phieuycvt");
            Repeater2.DataSource = dt2.Tables["Phieuycvt"];
            Repeater2.DataBind();
            while (reader.Read())
            {
                ngay.Text = reader["Date"].ToString();
                nguoiyeucau.Text = reader["Nguoiyeucau"].ToString();
                congtrinhsudung.Text = reader["Congtrinhsudung"].ToString();
                Label5.Text = reader["Mahoadon"].ToString();
                duan.Text = reader["Duan"].ToString();
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("SELECT * from vattuyeucau  where Mahoadon='" + madon + "' ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "vattuyeucau");
                GridView2.DataSource = dt.Tables["vattuyeucau"];
                GridView2.DataBind();
            }
            reader.Close();
            conn1.Close();
        }

        public void load61()
        {
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-1";
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("select  * from vattuyeucau where Mahoadon='" + madon1 + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }
        }



        public void loaddiem()
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
                managernotification.Text = reader["Manager"].ToString();
                nycnotification.Text = reader["HoTen"].ToString();
            }
            reader.Close();
            conn1.Close();
            if (managernotification.Text.Equals("admin") || managernotification.Text.Equals("giamdoc"))
            {
                string constr2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query2 = @"SELECT COUNT(Mahoadon) FROM Phieuycvt where Tenduyetbuoc3 = N'" + nycnotification.Text.Trim() + "' and StatusGD = N'Chưa Duyệt' and Display = 'on'";
                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    con2.Open();
                    using (SqlCommand cmd2 = new SqlCommand(query2))
                    {
                        cmd2.Connection = con2;
                        object obj = cmd2.ExecuteScalar();
                        if (obj != null)
                        {
                            countnoti.Text = obj.ToString();
                        }
                    }
                    con2.Close();
                }
            }
            else if (managernotification.Text.Equals("nhanvien") || managernotification.Text.Equals("gsat") || managernotification.Text.Equals("gsd") || managernotification.Text.Equals("gsck") || managernotification.Text.Equals("gs") || managernotification.Text.Equals("thohan") || managernotification.Text.Equals("thocokhi") || managernotification.Text.Equals("baotridien") || managernotification.Text.Equals("baotricokhi") || managernotification.Text.Equals("QSQC"))
            {
                string constrs1 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string querys1 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where  Username='" + username + "' and StatusCHT=N'Đã Duyệt' and Duyet1len2=N'off' and Duyet2len3=N'off' and Display='on' and StatusRecall=N'xacnhan'  ";
                using (SqlConnection cons1 = new SqlConnection(constrs1))
                {
                    cons1.Open();
                    using (SqlCommand cmds1 = new SqlCommand(querys1))
                    {
                        cmds1.Connection = cons1;
                        object objs1 = cmds1.ExecuteScalar();
                        if (objs1 != null)
                        {
                            Label50.Text = objs1.ToString();

                        }
                    }
                    cons1.Close();
                }

                string constrs2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string querys2 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusPKH=N'Đã Duyệt' and Duyet2len3=N'off' and Duyet1len2=N'on' and Display='on' and StatusRecall=N'xacnhan' ";
                using (SqlConnection cons2 = new SqlConnection(constrs2))
                {
                    cons2.Open();
                    using (SqlCommand cmds2 = new SqlCommand(querys2))
                    {
                        cmds2.Connection = cons2;
                        object objs2 = cmds2.ExecuteScalar();
                        if (objs2 != null)
                        {
                            Label51.Text = objs2.ToString();

                        }
                    }
                    cons2.Close();
                }

                string constrs3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string querys3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet1len2=N'on' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection cons3 = new SqlConnection(constrs3))
                {
                    cons3.Open();
                    using (SqlCommand cmds3 = new SqlCommand(querys3))
                    {
                        cmds3.Connection = cons3;
                        object objs3 = cmds3.ExecuteScalar();
                        if (objs3 != null)
                        {
                            Label52.Text = objs3.ToString();

                        }
                    }
                    cons3.Close();
                }

                string constrh1 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh1 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where  Username='" + username + "' and StatusCHT=N'Hoàn Đơn' and Duyet2len3=N'huy1' and Display='on'   ";
                using (SqlConnection conh1 = new SqlConnection(constrh1))
                {
                    conh1.Open();
                    using (SqlCommand cmdh1 = new SqlCommand(queryh1))
                    {
                        cmdh1.Connection = conh1;
                        object objh1 = cmdh1.ExecuteScalar();
                        if (objh1 != null)
                        {
                            Label53.Text = objh1.ToString();

                        }
                    }
                    conh1.Close();
                }

                string constrh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh2 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ";
                using (SqlConnection conh2 = new SqlConnection(constrh2))
                {
                    conh2.Open();
                    using (SqlCommand cmdh2 = new SqlCommand(queryh2))
                    {
                        cmdh2.Connection = conh2;
                        object objh2 = cmdh2.ExecuteScalar();
                        if (objh2 != null)
                        {
                            Label54.Text = objh2.ToString();

                        }
                    }
                    conh2.Close();
                }

                string constrh3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'  ";
                using (SqlConnection conh3 = new SqlConnection(constrh3))
                {
                    conh3.Open();
                    using (SqlCommand cmdh3 = new SqlCommand(queryh3))
                    {
                        cmdh3.Connection = conh3;
                        object objh3 = cmdh3.ExecuteScalar();
                        if (objh3 != null)
                        {
                            Label55.Text = objh3.ToString();

                        }
                    }
                    conh3.Close();
                }

                int s1 = Convert.ToInt32(Label50.Text);
                int s2 = Convert.ToInt32(Label51.Text);
                int s3 = Convert.ToInt32(Label52.Text);
                int s4 = Convert.ToInt32(Label53.Text);
                int s5 = Convert.ToInt32(Label54.Text);
                int s6 = Convert.ToInt32(Label55.Text);

                int aw = s1 + s2 + s3 + s4 + s5 + s6;
                countnoti.Text = aw.ToString();
            }
            else if (managernotification.Text.Equals("kho"))
            {
                string constr2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query2 = @"SELECT COUNT(Mahoadon) FROM Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off' ";

                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    con2.Open();
                    using (SqlCommand cmd2 = new SqlCommand(query2))
                    {
                        cmd2.Connection = con2;
                        object obj = cmd2.ExecuteScalar();
                        if (obj != null)
                        {
                            Label37.Text = obj.ToString();

                        }
                    }
                    con2.Close();
                }

                string constr3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con3 = new SqlConnection(constr3))
                {
                    con3.Open();
                    using (SqlCommand cmd3 = new SqlCommand(query3))
                    {
                        cmd3.Connection = con3;
                        object obj3 = cmd3.ExecuteScalar();
                        if (obj3 != null)
                        {
                            Label38.Text = obj3.ToString();

                        }
                    }
                    con3.Close();
                }

                string constr4 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query4 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con4 = new SqlConnection(constr4))
                {
                    con4.Open();
                    using (SqlCommand cmd4 = new SqlCommand(query4))
                    {
                        cmd4.Connection = con4;
                        object obj4 = cmd4.ExecuteScalar();
                        if (obj4 != null)
                        {
                            Label39.Text = obj4.ToString();

                        }
                    }
                    con4.Close();
                }

                string constr5 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query5 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off'   ";
                using (SqlConnection con5 = new SqlConnection(constr5))
                {
                    con5.Open();
                    using (SqlCommand cmd5 = new SqlCommand(query5))
                    {
                        cmd5.Connection = con5;
                        object obj5 = cmd5.ExecuteScalar();
                        if (obj5 != null)
                        {
                            Label40.Text = obj5.ToString();

                        }
                    }
                    con5.Close();
                }

                string constr6 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query6 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con6 = new SqlConnection(constr6))
                {
                    con6.Open();
                    using (SqlCommand cmd6 = new SqlCommand(query6))
                    {
                        cmd6.Connection = con6;
                        object obj6 = cmd6.ExecuteScalar();
                        if (obj6 != null)
                        {
                            Label41.Text = obj6.ToString();

                        }
                    }
                    con6.Close();
                }

                string constr7 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query7 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where  Username = '" + username + "' and StatusPKH = N'Đã Duyệt' and Duyet2len3 = N'off' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con7 = new SqlConnection(constr7))
                {
                    con7.Open();
                    using (SqlCommand cmd7 = new SqlCommand(query7))
                    {
                        cmd7.Connection = con7;
                        object obj7 = cmd7.ExecuteScalar();
                        if (obj7 != null)
                        {
                            Label42.Text = obj7.ToString();

                        }
                    }
                    con7.Close();
                }

                string constr71 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query71 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con71 = new SqlConnection(constr71))
                {
                    con71.Open();
                    using (SqlCommand cmd71 = new SqlCommand(query71))
                    {
                        cmd71.Connection = con71;
                        object obj71 = cmd71.ExecuteScalar();
                        if (obj71 != null)
                        {
                            Label49.Text = obj71.ToString();

                        }
                    }
                    con71.Close();
                }

                string constrh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh2 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ";
                using (SqlConnection conh2 = new SqlConnection(constrh2))
                {
                    conh2.Open();
                    using (SqlCommand cmdh2 = new SqlCommand(queryh2))
                    {
                        cmdh2.Connection = conh2;
                        object objh2 = cmdh2.ExecuteScalar();
                        if (objh2 != null)
                        {
                            Label54.Text = objh2.ToString();

                        }
                    }
                    conh2.Close();
                }

                string constrh3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'  ";
                using (SqlConnection conh3 = new SqlConnection(constrh3))
                {
                    conh3.Open();
                    using (SqlCommand cmdh3 = new SqlCommand(queryh3))
                    {
                        cmdh3.Connection = conh3;
                        object objh3 = cmdh3.ExecuteScalar();
                        if (objh3 != null)
                        {
                            Label55.Text = objh3.ToString();

                        }
                    }
                    conh3.Close();
                }
                string constrt1 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt1 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusYcvt = N'Đã Duyệt' ";
                using (SqlConnection cont1 = new SqlConnection(constrt1))
                {
                    cont1.Open();
                    using (SqlCommand cmdt1 = new SqlCommand(queryt1))
                    {
                        cmdt1.Connection = cont1;
                        object objt1 = cmdt1.ExecuteScalar();
                        if (objt1 != null)
                        {
                            kho1.Text = objt1.ToString();
                        }
                    }
                    cont1.Close();
                }

                string constrt2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt2 = @"SELECT  COUNT(Mahoadon) from Xuatkho where StatusPXK=N'Xác Nhận Đơn' ";
                using (SqlConnection cont2 = new SqlConnection(constrt2))
                {
                    cont2.Open();
                    using (SqlCommand cmdt2 = new SqlCommand(queryt2))
                    {
                        cmdt2.Connection = cont2;
                        object objt2 = cmdt2.ExecuteScalar();
                        if (objt2 != null)
                        {
                            kho2.Text = objt2.ToString();
                        }
                    }
                    cont2.Close();
                }

                string constrt3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt3 = @"SELECT  COUNT(Mahoadon) from Xuatkho where StatusPXK=N'Đang Giao Hàng' ";
                using (SqlConnection cont3 = new SqlConnection(constrt3))
                {
                    cont3.Open();
                    using (SqlCommand cmdt3 = new SqlCommand(queryt3))
                    {
                        cmdt3.Connection = cont3;
                        object objt3 = cmdt3.ExecuteScalar();
                        if (objt3 != null)
                        {
                            kho3.Text = objt3.ToString();
                        }
                    }
                    cont3.Close();
                }

                string constrt4 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt4 = @"SELECT  COUNT(Mahoadon) from Xuatkho where StatusPXK=N'Giao Thất Bại' ";
                using (SqlConnection cont4 = new SqlConnection(constrt4))
                {
                    cont4.Open();
                    using (SqlCommand cmdt4 = new SqlCommand(queryt4))
                    {
                        cmdt4.Connection = cont4;
                        object objt4 = cmdt4.ExecuteScalar();
                        if (objt4 != null)
                        {
                            kho4.Text = objt4.ToString();
                        }
                    }
                    cont4.Close();
                }

                int a11 = Convert.ToInt32(Label37.Text);
                int b11 = Convert.ToInt32(Label38.Text);
                int c11 = Convert.ToInt32(Label39.Text);
                int d11 = Convert.ToInt32(Label40.Text);
                int e11 = Convert.ToInt32(Label41.Text);
                int f11 = Convert.ToInt32(Label42.Text);
                int g11 = Convert.ToInt32(Label43.Text);
                int z11 = Convert.ToInt32(Label49.Text);
                int g111 = Convert.ToInt32(Label54.Text);
                int z111 = Convert.ToInt32(Label55.Text);
                int zt1 = Convert.ToInt32(kho1.Text);
                int zt2 = Convert.ToInt32(kho2.Text);
                int zt3 = Convert.ToInt32(kho3.Text);
                int zt4 = Convert.ToInt32(kho4.Text);
                int aw = a11 + b11 + c11 + d11 + e11 + f11 + g11 + z11 + g111 + z111 + zt1 + zt2 + zt3 + zt4;
                countnoti.Text = aw.ToString();
            }
            else if (managernotification.Text.Equals("giaonhan"))
            {
                string constr2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query2 = @"SELECT COUNT(Mahoadon) FROM Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off' ";

                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    con2.Open();
                    using (SqlCommand cmd2 = new SqlCommand(query2))
                    {
                        cmd2.Connection = con2;
                        object obj = cmd2.ExecuteScalar();
                        if (obj != null)
                        {
                            Label37.Text = obj.ToString();

                        }
                    }
                    con2.Close();
                }

                string constr3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con3 = new SqlConnection(constr3))
                {
                    con3.Open();
                    using (SqlCommand cmd3 = new SqlCommand(query3))
                    {
                        cmd3.Connection = con3;
                        object obj3 = cmd3.ExecuteScalar();
                        if (obj3 != null)
                        {
                            Label38.Text = obj3.ToString();

                        }
                    }
                    con3.Close();
                }

                string constr4 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query4 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con4 = new SqlConnection(constr4))
                {
                    con4.Open();
                    using (SqlCommand cmd4 = new SqlCommand(query4))
                    {
                        cmd4.Connection = con4;
                        object obj4 = cmd4.ExecuteScalar();
                        if (obj4 != null)
                        {
                            Label39.Text = obj4.ToString();

                        }
                    }
                    con4.Close();
                }

                string constr5 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query5 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off'   ";
                using (SqlConnection con5 = new SqlConnection(constr5))
                {
                    con5.Open();
                    using (SqlCommand cmd5 = new SqlCommand(query5))
                    {
                        cmd5.Connection = con5;
                        object obj5 = cmd5.ExecuteScalar();
                        if (obj5 != null)
                        {
                            Label40.Text = obj5.ToString();

                        }
                    }
                    con5.Close();
                }

                string constr6 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query6 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con6 = new SqlConnection(constr6))
                {
                    con6.Open();
                    using (SqlCommand cmd6 = new SqlCommand(query6))
                    {
                        cmd6.Connection = con6;
                        object obj6 = cmd6.ExecuteScalar();
                        if (obj6 != null)
                        {
                            Label41.Text = obj6.ToString();

                        }
                    }
                    con6.Close();
                }

                string constr7 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query7 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where  Username = '" + username + "' and StatusPKH = N'Đã Duyệt' and Duyet2len3 = N'off' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con7 = new SqlConnection(constr7))
                {
                    con7.Open();
                    using (SqlCommand cmd7 = new SqlCommand(query7))
                    {
                        cmd7.Connection = con7;
                        object obj7 = cmd7.ExecuteScalar();
                        if (obj7 != null)
                        {
                            Label42.Text = obj7.ToString();

                        }
                    }
                    con7.Close();
                }

                string constr71 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query71 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con71 = new SqlConnection(constr71))
                {
                    con71.Open();
                    using (SqlCommand cmd71 = new SqlCommand(query71))
                    {
                        cmd71.Connection = con71;
                        object obj71 = cmd71.ExecuteScalar();
                        if (obj71 != null)
                        {
                            Label49.Text = obj71.ToString();

                        }
                    }
                    con71.Close();
                }

                string constrh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh2 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ";
                using (SqlConnection conh2 = new SqlConnection(constrh2))
                {
                    conh2.Open();
                    using (SqlCommand cmdh2 = new SqlCommand(queryh2))
                    {
                        cmdh2.Connection = conh2;
                        object objh2 = cmdh2.ExecuteScalar();
                        if (objh2 != null)
                        {
                            Label54.Text = objh2.ToString();

                        }
                    }
                    conh2.Close();
                }

                string constrh3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'  ";
                using (SqlConnection conh3 = new SqlConnection(constrh3))
                {
                    conh3.Open();
                    using (SqlCommand cmdh3 = new SqlCommand(queryh3))
                    {
                        cmdh3.Connection = conh3;
                        object objh3 = cmdh3.ExecuteScalar();
                        if (objh3 != null)
                        {
                            Label55.Text = objh3.ToString();

                        }
                    }
                    conh3.Close();
                }

                string constrt3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt3 = @"SELECT  COUNT(Mahoadon) from Xuatkho where StatusPXK=N'Đang Giao Hàng' and Nguoigiaohanh=N'" + hotenad.Text + "' ";
                using (SqlConnection cont3 = new SqlConnection(constrt3))
                {
                    cont3.Open();
                    using (SqlCommand cmdt3 = new SqlCommand(queryt3))
                    {
                        cmdt3.Connection = cont3;
                        object objt3 = cmdt3.ExecuteScalar();
                        if (objt3 != null)
                        {
                            kho3.Text = objt3.ToString();
                        }
                    }
                    cont3.Close();
                }

                string constrt4 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryt4 = @"SELECT  COUNT(Mahoadon) from Xuatkho where StatusPXK=N'Giao Thất Bại'  and Nguoigiaohanh=N'" + hotenad.Text + "' ";
                using (SqlConnection cont4 = new SqlConnection(constrt4))
                {
                    cont4.Open();
                    using (SqlCommand cmdt4 = new SqlCommand(queryt4))
                    {
                        cmdt4.Connection = cont4;
                        object objt4 = cmdt4.ExecuteScalar();
                        if (objt4 != null)
                        {
                            kho4.Text = objt4.ToString();
                        }
                    }
                    cont4.Close();
                }

                int a11 = Convert.ToInt32(Label37.Text);
                int b11 = Convert.ToInt32(Label38.Text);
                int c11 = Convert.ToInt32(Label39.Text);
                int d11 = Convert.ToInt32(Label40.Text);
                int e11 = Convert.ToInt32(Label41.Text);
                int f11 = Convert.ToInt32(Label42.Text);
                int g11 = Convert.ToInt32(Label43.Text);
                int z11 = Convert.ToInt32(Label49.Text);
                int g111 = Convert.ToInt32(Label54.Text);
                int z111 = Convert.ToInt32(Label55.Text);
                int zt3 = Convert.ToInt32(kho3.Text);
                int zt4 = Convert.ToInt32(kho4.Text);
                int aw = a11 + b11 + c11 + d11 + e11 + f11 + g11 + z11 + g111 + z111 + zt3 + zt4;
                countnoti.Text = aw.ToString();
            }
            else if (managernotification.Text.Equals("ketoan") || managernotification.Text.Equals("muahang") || managernotification.Text.Equals("chihuytruong") || managernotification.Text.Equals("nvpda") || managernotification.Text.Equals("it") || managernotification.Text.Equals("thukho") || managernotification.Text.Equals("thuquy") || managernotification.Text.Equals("nvhcns"))
            {
                string constr2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query2 = @"SELECT COUNT(Mahoadon) FROM Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off' ";

                using (SqlConnection con2 = new SqlConnection(constr2))
                {
                    con2.Open();
                    using (SqlCommand cmd2 = new SqlCommand(query2))
                    {
                        cmd2.Connection = con2;
                        object obj = cmd2.ExecuteScalar();
                        if (obj != null)
                        {
                            Label37.Text = obj.ToString();

                        }
                    }
                    con2.Close();
                }

                string constr3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con3 = new SqlConnection(constr3))
                {
                    con3.Open();
                    using (SqlCommand cmd3 = new SqlCommand(query3))
                    {
                        cmd3.Connection = con3;
                        object obj3 = cmd3.ExecuteScalar();
                        if (obj3 != null)
                        {
                            Label38.Text = obj3.ToString();

                        }
                    }
                    con3.Close();
                }

                string constr4 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query4 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con4 = new SqlConnection(constr4))
                {
                    con4.Open();
                    using (SqlCommand cmd4 = new SqlCommand(query4))
                    {
                        cmd4.Connection = con4;
                        object obj4 = cmd4.ExecuteScalar();
                        if (obj4 != null)
                        {
                            Label39.Text = obj4.ToString();

                        }
                    }
                    con4.Close();
                }

                string constr5 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query5 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off'   ";
                using (SqlConnection con5 = new SqlConnection(constr5))
                {
                    con5.Open();
                    using (SqlCommand cmd5 = new SqlCommand(query5))
                    {
                        cmd5.Connection = con5;
                        object obj5 = cmd5.ExecuteScalar();
                        if (obj5 != null)
                        {
                            Label40.Text = obj5.ToString();

                        }
                    }
                    con5.Close();
                }

                string constr6 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query6 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con6 = new SqlConnection(constr6))
                {
                    con6.Open();
                    using (SqlCommand cmd6 = new SqlCommand(query6))
                    {
                        cmd6.Connection = con6;
                        object obj6 = cmd6.ExecuteScalar();
                        if (obj6 != null)
                        {
                            Label41.Text = obj6.ToString();

                        }
                    }
                    con6.Close();
                }

                string constr7 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query7 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where  Username = '" + username + "' and StatusPKH = N'Đã Duyệt' and Duyet2len3 = N'off' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con7 = new SqlConnection(constr7))
                {
                    con7.Open();
                    using (SqlCommand cmd7 = new SqlCommand(query7))
                    {
                        cmd7.Connection = con7;
                        object obj7 = cmd7.ExecuteScalar();
                        if (obj7 != null)
                        {
                            Label42.Text = obj7.ToString();

                        }
                    }
                    con7.Close();
                }

                string constr71 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query71 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ";
                using (SqlConnection con71 = new SqlConnection(constr71))
                {
                    con71.Open();
                    using (SqlCommand cmd71 = new SqlCommand(query71))
                    {
                        cmd71.Connection = con71;
                        object obj71 = cmd71.ExecuteScalar();
                        if (obj71 != null)
                        {
                            Label49.Text = obj71.ToString();

                        }
                    }
                    con71.Close();
                }

                string constrh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh2 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ";
                using (SqlConnection conh2 = new SqlConnection(constrh2))
                {
                    conh2.Open();
                    using (SqlCommand cmdh2 = new SqlCommand(queryh2))
                    {
                        cmdh2.Connection = conh2;
                        object objh2 = cmdh2.ExecuteScalar();
                        if (objh2 != null)
                        {
                            Label54.Text = objh2.ToString();

                        }
                    }
                    conh2.Close();
                }

                string constrh3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string queryh3 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'  ";
                using (SqlConnection conh3 = new SqlConnection(constrh3))
                {
                    conh3.Open();
                    using (SqlCommand cmdh3 = new SqlCommand(queryh3))
                    {
                        cmdh3.Connection = conh3;
                        object objh3 = cmdh3.ExecuteScalar();
                        if (objh3 != null)
                        {
                            Label55.Text = objh3.ToString();

                        }
                    }
                    conh3.Close();
                }

                int a11 = Convert.ToInt32(Label37.Text);
                int b11 = Convert.ToInt32(Label38.Text);
                int c11 = Convert.ToInt32(Label39.Text);
                int d11 = Convert.ToInt32(Label40.Text);
                int e11 = Convert.ToInt32(Label41.Text);
                int f11 = Convert.ToInt32(Label42.Text);
                int g11 = Convert.ToInt32(Label43.Text);
                int z11 = Convert.ToInt32(Label49.Text);
                int g111 = Convert.ToInt32(Label54.Text);
                int z111 = Convert.ToInt32(Label55.Text);
                int aw = a11 + b11 + c11 + d11 + e11 + f11 + g11 + z11 + g111 + z111;
                countnoti.Text = aw.ToString();

            }
            else if (managernotification.Text.Equals("ppda") || managernotification.Text.Equals("tpkehoach") || managernotification.Text.Equals("tpda") || managernotification.Text.Equals("tpmh") || managernotification.Text.Equals("ktt") || managernotification.Text.Equals("tpns"))
            {
                string constr9 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query9 = @"SELECT COUNT(Mahoadon) FROM Phieuycvt where Tenduyetbuoc2=N'" + nycnotification.Text.Trim() + "' and StatusPKH=N'Chưa Duyệt' and Display='on' ";
                using (SqlConnection con9 = new SqlConnection(constr9))
                {
                    con9.Open();
                    using (SqlCommand cmd9 = new SqlCommand(query9))
                    {
                        cmd9.Connection = con9;
                        object obj9 = cmd9.ExecuteScalar();
                        if (obj9 != null)
                        {
                            Label44.Text = obj9.ToString();
                        }
                    }
                    con9.Close();
                }

                string constr10 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query10 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc2=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con10 = new SqlConnection(constr10))
                {
                    con10.Open();
                    using (SqlCommand cmd10 = new SqlCommand(query10))
                    {
                        cmd10.Connection = con10;
                        object obj10 = cmd10.ExecuteScalar();
                        if (obj10 != null)
                        {
                            Label45.Text = obj10.ToString();

                        }
                    }
                    con10.Close();
                }

                string constr11 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query11 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc2=N'" + nycnotification.Text + "'  ";
                using (SqlConnection con11 = new SqlConnection(constr11))
                {
                    con11.Open();
                    using (SqlCommand cmd11 = new SqlCommand(query11))
                    {
                        cmd11.Connection = con11;
                        object obj11 = cmd11.ExecuteScalar();
                        if (obj11 != null)
                        {
                            Label46.Text = obj11.ToString();

                        }
                    }
                    con11.Close();
                }

                string constr12 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query12 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username='" + username + "' and StatusGD=N'Đã Duyệt' and Duyet1len2=N'on' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan'   ";
                using (SqlConnection con12 = new SqlConnection(constr12))
                {
                    con12.Open();
                    using (SqlCommand cmd12 = new SqlCommand(query12))
                    {
                        cmd12.Connection = con12;
                        object obj12 = cmd12.ExecuteScalar();
                        if (obj12 != null)
                        {
                            Label47.Text = obj12.ToString();

                        }
                    }
                    con12.Close();
                }

                string constr13 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                string query13 = @"SELECT  COUNT(Mahoadon) from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'     ";
                using (SqlConnection con13 = new SqlConnection(constr13))
                {
                    con13.Open();
                    using (SqlCommand cmd13 = new SqlCommand(query13))
                    {
                        cmd13.Connection = con13;
                        object obj13 = cmd13.ExecuteScalar();
                        if (obj13 != null)
                        {
                            Label48.Text = obj13.ToString();

                        }
                    }
                    con13.Close();
                }

                int a12 = Convert.ToInt32(Label44.Text);
                int b12 = Convert.ToInt32(Label45.Text);
                int c12 = Convert.ToInt32(Label46.Text);
                int d12 = Convert.ToInt32(Label47.Text);
                int e12 = Convert.ToInt32(Label48.Text);

                int aw = a12 + b12 + c12 + d12 + e12;
                countnoti.Text = aw.ToString();
            }
        }

        protected void loadfg()
        {
            loaddiem();
            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(constr);
            string username = Session["ADminID"].ToString();
            string sql = "select  * from Admin where UserName='" + username + "'";
            SqlCommand cmd1 = new SqlCommand(sql, conn1);
            conn1.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                managernotification.Text = reader["Manager"].ToString();
            }
            reader.Close();
            conn1.Close();
            if (managernotification.Text.Equals("admin") || managernotification.Text.Equals("giamdoc"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                string username1 = Session["ADminID"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT DISTINCT Nguoiyeucau,NDNYC,Mahoadon,Date,Tenduyetbuoc1,StatusCHT,NDCHT,Tenduyetbuoc2,StatusPKH,NDPKH,Tenduyetbuoc3,StatusGD,NDGGD from Phieuycvt where Tenduyetbuoc3=N'" + nycnotification.Text.Trim() + "' and StatusGD=N'Chưa Duyệt' and Display='on' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView2.DataSource = dt.Tables["Phieuycvt"];
                ListView2.DataBind();
            }
            else if (managernotification.Text.Equals("kho"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                string username1 = Session["ADminID"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off'  ORDER BY Date DESC", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView2.DataSource = dt.Tables["Phieuycvt"];
                ListView2.DataBind();

                SqlCommand cmd2 = new SqlCommand("SELECT  * from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter2;
                adapter2 = new SqlDataAdapter(cmd2);
                DataSet dt2 = new DataSet();
                adapter2.Fill(dt2, "Phieuycvt");
                ListView3.DataSource = dt2.Tables["Phieuycvt"];
                ListView3.DataBind();

                SqlCommand cmd3 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter3;
                adapter3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                adapter3.Fill(dt3, "Phieuycvt");
                ListView4.DataSource = dt3.Tables["Phieuycvt"];
                ListView4.DataBind();

                SqlCommand cmd5 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off' ORDER BY Date DESC  ", conn);
                SqlDataAdapter adapter5;
                adapter5 = new SqlDataAdapter(cmd5);
                DataSet dt5 = new DataSet();
                adapter5.Fill(dt5, "Phieuycvt");
                ListView5.DataSource = dt5.Tables["Phieuycvt"];
                ListView5.DataBind();

                SqlCommand cmd4 = new SqlCommand("SELECT * from Phieuycvt where  Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter4;
                adapter4 = new SqlDataAdapter(cmd4);
                DataSet dt4 = new DataSet();
                adapter4.Fill(dt4, "Phieuycvt");
                ListView6.DataSource = dt4.Tables["Phieuycvt"];
                ListView6.DataBind();

                SqlCommand cmdk1 = new SqlCommand("SELECT * from Phieuycvt where StatusYcvt = N'Đã Duyệt' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapterk1;
                adapterk1 = new SqlDataAdapter(cmdk1);
                DataSet dtk1 = new DataSet();
                adapterk1.Fill(dtk1, "Phieuycvt");
                kholist1.DataSource = dtk1.Tables["Phieuycvt"];
                kholist1.DataBind();

                SqlCommand cmdk2 = new SqlCommand("SELECT * from Xuatkho where StatusPXK = N'Xác Nhận Đơn' ORDER BY Date DESC", conn);
                SqlDataAdapter adapterk2;
                adapterk2 = new SqlDataAdapter(cmdk2);
                DataSet dtk2 = new DataSet();
                adapterk2.Fill(dtk2, "Phieuycvt");
                kholist2.DataSource = dtk2.Tables["Phieuycvt"];
                kholist2.DataBind();

                SqlCommand cmdk3 = new SqlCommand("SELECT * from Xuatkho where StatusPXK = N'Đang Giao Hàng' ORDER BY Date DESC", conn);
                SqlDataAdapter adapterk3;
                adapterk3 = new SqlDataAdapter(cmdk3);
                DataSet dtk3 = new DataSet();
                adapterk3.Fill(dtk3, "Phieuycvt");
                kholist3.DataSource = dtk3.Tables["Phieuycvt"];
                kholist3.DataBind();

                SqlCommand cmdk4 = new SqlCommand("SELECT * from Xuatkho where StatusPXK = N'Giao Thất Bại' ORDER BY Date DESC", conn);
                SqlDataAdapter adapterk4;
                adapterk4 = new SqlDataAdapter(cmdk4);
                DataSet dtk4 = new DataSet();
                adapterk4.Fill(dtk4, "Phieuycvt");
                kholist4.DataSource = dtk4.Tables["Phieuycvt"];
                kholist4.DataBind();
            }
            else if (managernotification.Text.Equals("giaonhan"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                string username1 = Session["ADminID"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView2.DataSource = dt.Tables["Phieuycvt"];
                ListView2.DataBind();

                SqlCommand cmd2 = new SqlCommand("SELECT  * from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter2;
                adapter2 = new SqlDataAdapter(cmd2);
                DataSet dt2 = new DataSet();
                adapter2.Fill(dt2, "Phieuycvt");
                ListView3.DataSource = dt2.Tables["Phieuycvt"];
                ListView3.DataBind();

                SqlCommand cmd3 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter3;
                adapter3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                adapter3.Fill(dt3, "Phieuycvt");
                ListView4.DataSource = dt3.Tables["Phieuycvt"];
                ListView4.DataBind();

                SqlCommand cmd5 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter5;
                adapter5 = new SqlDataAdapter(cmd5);
                DataSet dt5 = new DataSet();
                adapter5.Fill(dt5, "Phieuycvt");
                ListView5.DataSource = dt5.Tables["Phieuycvt"];
                ListView5.DataBind();

                SqlCommand cmd4 = new SqlCommand("SELECT * from Phieuycvt where  Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter4;
                adapter4 = new SqlDataAdapter(cmd4);
                DataSet dt4 = new DataSet();
                adapter4.Fill(dt4, "Phieuycvt");
                ListView6.DataSource = dt4.Tables["Phieuycvt"];
                ListView6.DataBind();

                SqlCommand cmdk3 = new SqlCommand("SELECT * from Xuatkho where StatusPXK = N'Đang Giao Hàng' and Nguoigiaohanh=N'" + hotenad.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapterk3;
                adapterk3 = new SqlDataAdapter(cmdk3);
                DataSet dtk3 = new DataSet();
                adapterk3.Fill(dtk3, "Phieuycvt");
                kholist3.DataSource = dtk3.Tables["Phieuycvt"];
                kholist3.DataBind();

                SqlCommand cmdk4 = new SqlCommand("SELECT * from Xuatkho where StatusPXK = N'Giao Thất Bại' and Nguoigiaohanh=N'" + hotenad.Text + "' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapterk4;
                adapterk4 = new SqlDataAdapter(cmdk4);
                DataSet dtk4 = new DataSet();
                adapterk4.Fill(dtk4, "Phieuycvt");
                kholist4.DataSource = dtk4.Tables["Phieuycvt"];
                kholist4.DataBind();
            }
            else if (managernotification.Text.Equals("ketoan") || managernotification.Text.Equals("muahang") || managernotification.Text.Equals("chihuytruong") || managernotification.Text.Equals("it") || managernotification.Text.Equals("thukho") || managernotification.Text.Equals("thuquy") || managernotification.Text.Equals("nvhcns") || managernotification.Text.Equals("nvpda"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                string username1 = Session["ADminID"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Tenduyetbuoc1=N'" + nycnotification.Text.Trim() + "' and StatusCHT=N'Chưa Duyệt' and Display='on' and StatusRead='off' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView2.DataSource = dt.Tables["Phieuycvt"];
                ListView2.DataBind();

                SqlCommand cmd2 = new SqlCommand("SELECT  * from Phieuycvt where Duyet2len3=N'off' and StatusRecall=N'xacnhan' and StatusPKH=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter2;
                adapter2 = new SqlDataAdapter(cmd2);
                DataSet dt2 = new DataSet();
                adapter2.Fill(dt2, "Phieuycvt");
                ListView3.DataSource = dt2.Tables["Phieuycvt"];
                ListView3.DataBind();

                SqlCommand cmd3 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter3;
                adapter3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                adapter3.Fill(dt3, "Phieuycvt");
                ListView4.DataSource = dt3.Tables["Phieuycvt"];
                ListView4.DataBind();

                SqlCommand cmd5 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'huy' and StatusPKH=N'Hoàn Đơn' and StatusCHT=N'Đã duyệt' and Display='on'  and Tenduyetbuoc1=N'" + nycnotification.Text + "' and StatusRead='off'  ORDER BY Date DESC", conn);
                SqlDataAdapter adapter5;
                adapter5 = new SqlDataAdapter(cmd5);
                DataSet dt5 = new DataSet();
                adapter5.Fill(dt5, "Phieuycvt");
                ListView5.DataSource = dt5.Tables["Phieuycvt"];
                ListView5.DataBind();

                SqlCommand cmd4 = new SqlCommand("SELECT * from Phieuycvt where  Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc1=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter4;
                adapter4 = new SqlDataAdapter(cmd4);
                DataSet dt4 = new DataSet();
                adapter4.Fill(dt4, "Phieuycvt");
                ListView6.DataSource = dt4.Tables["Phieuycvt"];
                ListView6.DataBind();

            }
            else if (managernotification.Text.Equals("ppda") || managernotification.Text.Equals("tpkehoach") || managernotification.Text.Equals("tpda") || managernotification.Text.Equals("tpmh") || managernotification.Text.Equals("ktt") || managernotification.Text.Equals("tpns"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                string username1 = Session["ADminID"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Tenduyetbuoc2=N'" + nycnotification.Text.Trim() + "' and StatusPKH=N'Chưa Duyệt' and Display='on' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView2.DataSource = dt.Tables["Phieuycvt"];
                ListView2.DataBind();

                //duyet don daduyet2

                SqlCommand cmd3 = new SqlCommand("SELECT * from Phieuycvt where  StatusRecall=N'xacnhan' and StatusGD=N'Đã duyệt' and Display='on' and Tenduyetbuoc2=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter3;
                adapter3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                adapter3.Fill(dt3, "Phieuycvt");
                ListView4.DataSource = dt3.Tables["Phieuycvt"];
                ListView4.DataBind();

                //huy don donhuy1
                SqlCommand cmd4 = new SqlCommand("SELECT * from Phieuycvt where  Duyet2len3=N'huygd' and StatusRecall=N'huy' and StatusGD=N'Hoàn Đơn' and Display='on' and Tenduyetbuoc2=N'" + nycnotification.Text + "' ORDER BY Date DESC", conn);
                SqlDataAdapter adapter4;
                adapter4 = new SqlDataAdapter(cmd4);
                DataSet dt4 = new DataSet();
                adapter4.Fill(dt4, "Phieuycvt");
                ListView5.DataSource = dt4.Tables["Phieuycvt"];
                ListView5.DataBind();
            }
        }

        protected void loaddonduyet()
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
                manager.Text = reader["Manager"].ToString();
            }
            reader.Close();
            conn1.Close();

            if (manager.Text.Equals("kho") || manager.Text.Equals("giaonhan") || manager.Text.Equals("ketoan") || manager.Text.Equals("muahang") || manager.Text.Equals("chihuytruong") || manager.Text.Equals("it") || manager.Text.Equals("thukho") || manager.Text.Equals("thuquy") || manager.Text.Equals("nvhcns") || manager.Text.Equals("nvpda"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusPKH=N'Đã Duyệt' and Duyet2len3=N'off' and Display='on' and StatusRecall=N'xacnhan' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView7.DataSource = dt.Tables["Phieuycvt"];
                ListView7.DataBind();

                string connectionstring2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn2 = new SqlConnection(connectionstring2);
                SqlCommand cmd2 = new SqlCommand("SELECT * from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ORDER BY Date DESC ", conn2);
                SqlDataAdapter adapter2;
                adapter2 = new SqlDataAdapter(cmd2);
                DataSet dt2 = new DataSet();
                adapter2.Fill(dt2, "Phieuycvt");
                ListView9.DataSource = dt2.Tables["Phieuycvt"];
                ListView9.DataBind();
            }
            else if (manager.Text.Equals("nhanvien") || manager.Text.Equals("gsat") || manager.Text.Equals("gsd") || manager.Text.Equals("gsck") || manager.Text.Equals("gs") || manager.Text.Equals("thohan") || manager.Text.Equals("thocokhi") || manager.Text.Equals("baotridien") || manager.Text.Equals("baotricokhi") || manager.Text.Equals("QSQC"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusCHT=N'Đã Duyệt' and Duyet1len2=N'off' and Duyet2len3=N'off' and Display='on' and StatusRecall=N'xacnhan' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView10.DataSource = dt.Tables["Phieuycvt"];
                ListView10.DataBind();

                string connectionstring2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn2 = new SqlConnection(connectionstring);
                SqlCommand cmd2 = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusPKH=N'Đã Duyệt' and Duyet2len3=N'off' and Duyet1len2=N'on' and Display='on' and StatusRecall=N'xacnhan'  ORDER BY Date DESC", conn2);
                SqlDataAdapter adapter2;
                adapter2 = new SqlDataAdapter(cmd2);
                DataSet dt2 = new DataSet();
                adapter2.Fill(dt2, "Phieuycvt");
                ListView7.DataSource = dt2.Tables["Phieuycvt"];
                ListView7.DataBind();

                string connectionstring3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn3 = new SqlConnection(connectionstring3);
                SqlCommand cmd3 = new SqlCommand("SELECT * from Phieuycvt where Username = '" + username + "' and StatusGD = N'Đã Duyệt' and Duyet1len2=N'on' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ORDER BY Date DESC ", conn3);
                SqlDataAdapter adapter3;
                adapter3 = new SqlDataAdapter(cmd3);
                DataSet dt3 = new DataSet();
                adapter3.Fill(dt3, "Phieuycvt");
                ListView9.DataSource = dt3.Tables["Phieuycvt"];
                ListView9.DataBind();
            }
            else if (manager.Text.Equals("ppda") || manager.Text.Equals("tpkehoach") || manager.Text.Equals("tpda") || manager.Text.Equals("tpmh") || manager.Text.Equals("ktt") || manager.Text.Equals("tpns"))
            {
                string date = DateTime.Now.ToString("ddMMyyyy");
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusGD=N'Đã Duyệt' and Duyet1len2=N'on' and Duyet2len3 = N'on' and Display = 'on' and StatusRecall = N'xacnhan' ORDER BY Date DESC ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView9.DataSource = dt.Tables["Phieuycvt"];
                ListView9.DataBind();
            }
        }

        protected void loaddonhuy()
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
                manager.Text = reader["Manager"].ToString();
            }
            reader.Close();
            conn1.Close();

            if (manager.Text.Equals("kho") || manager.Text.Equals("giaonhan") || manager.Text.Equals("ketoan") || manager.Text.Equals("muahang") || manager.Text.Equals("chihuytruong") || manager.Text.Equals("it") || manager.Text.Equals("thukho") || manager.Text.Equals("thuquy") || manager.Text.Equals("nvhcns") || manager.Text.Equals("nvpda"))
            {
                string connectionstringh1 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection connh1 = new SqlConnection(connectionstringh1);
                SqlCommand cmdh1 = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ORDER BY Date DESC ", connh1);
                SqlDataAdapter adapterh1;
                adapterh1 = new SqlDataAdapter(cmdh1);
                DataSet dth1 = new DataSet();
                adapterh1.Fill(dth1, "Phieuycvt");
                ListView8.DataSource = dth1.Tables["Phieuycvt"];
                ListView8.DataBind();

                string connectionstringh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection connh2 = new SqlConnection(connectionstringh2);
                SqlCommand cmdh2 = new SqlCommand("SELECT * from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on' ORDER BY Date DESC ", connh2);
                SqlDataAdapter adapterh2;
                adapterh2 = new SqlDataAdapter(cmdh2);
                DataSet dth2 = new DataSet();
                adapterh2.Fill(dth2, "Phieuycvt");
                ListView12.DataSource = dth2.Tables["Phieuycvt"];
                ListView12.DataBind();
            }
            else if (manager.Text.Equals("nhanvien") || manager.Text.Equals("gsat") || manager.Text.Equals("gsd") || manager.Text.Equals("gsck") || manager.Text.Equals("gs") || manager.Text.Equals("thohan") || manager.Text.Equals("thocokhi") || manager.Text.Equals("baotridien") || manager.Text.Equals("baotricokhi") || manager.Text.Equals("QSQC"))
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusCHT=N'Hoàn Đơn' and Duyet2len3=N'huy1' and Display='on' ORDER BY Date DESC  ", conn);
                SqlDataAdapter adapter;
                adapter = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                adapter.Fill(dt, "Phieuycvt");
                ListView11.DataSource = dt.Tables["Phieuycvt"];
                ListView11.DataBind();

                string connectionstringh1 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection connh1 = new SqlConnection(connectionstringh1);
                SqlCommand cmdh1 = new SqlCommand("SELECT * from Phieuycvt where Username='" + username + "' and StatusPKH=N'Hoàn Đơn' and Duyet2len3=N'huytp' and Display='on' ORDER BY Date DESC ", connh1);
                SqlDataAdapter adapterh1;
                adapterh1 = new SqlDataAdapter(cmdh1);
                DataSet dth1 = new DataSet();
                adapterh1.Fill(dth1, "Phieuycvt");
                ListView8.DataSource = dth1.Tables["Phieuycvt"];
                ListView8.DataBind();

                string connectionstringh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection connh2 = new SqlConnection(connectionstringh2);
                SqlCommand cmdh2 = new SqlCommand("SELECT * from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on'  ", connh2);
                SqlDataAdapter adapterh2;
                adapterh2 = new SqlDataAdapter(cmdh2);
                DataSet dth2 = new DataSet();
                adapterh2.Fill(dth2, "Phieuycvt");
                ListView12.DataSource = dth2.Tables["Phieuycvt"];
                ListView12.DataBind();
            }
            else if (manager.Text.Equals("ppda") || manager.Text.Equals("tpkehoach") || manager.Text.Equals("tpda") || manager.Text.Equals("tpmh") || manager.Text.Equals("ktt") || manager.Text.Equals("tpns"))
            {
                string connectionstringh2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection connh2 = new SqlConnection(connectionstringh2);
                SqlCommand cmdh2 = new SqlCommand("SELECT * from Phieuycvt where Username = '" + username + "' and StatusGD = N'Hoàn Đơn' and Duyet2len3 = N'huygd' and Display = 'on' ORDER BY Date DESC  ", connh2);
                SqlDataAdapter adapterh2;
                adapterh2 = new SqlDataAdapter(cmdh2);
                DataSet dth2 = new DataSet();
                adapterh2.Fill(dth2, "Phieuycvt");
                ListView12.DataSource = dth2.Tables["Phieuycvt"];
                ListView12.DataBind();
            }
        }
        public void load1()
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
                Label7.Text = reader["Bophan"].ToString();
                hotenad.Text = reader["HoTen"].ToString();
            }
            reader.Close();
            conn1.Close();
            if (Label3.Text.Equals("khach"))
            {
                Response.Redirect("~/Admin/Chantruycap.aspx");
            }

        }
        public void load2()
        {
            string constr2 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn2 = new SqlConnection(constr2);
            string username = Session["ADminID"].ToString();
            string sql2 = "select  * from Admin where UserName='" + username + "'";
            SqlCommand cmd2 = new SqlCommand(sql2, conn2);
            conn2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                Label3.Text = reader2["Manager"].ToString();
            }
            reader2.Close();
            conn2.Close();

            if (Label3.Text != "kho")
            {
                abc.Visible = false;
                Button1.Visible = false;
            }
            else
            {
                string constr3 = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                SqlConnection conn3 = new SqlConnection(constr3);
                string madon1 = Request.QueryString["idnsx"].ToString();
                string sql3 = "select  * from Phieuycvt where Mahoadon='" + madon1 + "'";
                SqlCommand cmd3 = new SqlCommand(sql3, conn3);
                conn3.Open();
                SqlDataReader reader3 = cmd3.ExecuteReader();
                while (reader3.Read())
                {
                    statusyc.Text = reader3["StatusYcvt"].ToString();
                }
                reader3.Close();
                conn3.Close();
                // Trạng thái duyệt chưa hay chưa duyệt PYCVT
                if (statusyc.Text.Equals("Đã Duyệt"))
                {
                    abc.Visible = true;
                    Button1.Visible = true;
                }
                else if (statusyc.Text.Equals("Đã Duyệt1"))
                {
                    abc.Visible = false;
                    Button1.Visible = false;
                }
            }


            string constr = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(constr);
            string madon = Request.QueryString["idnsx"].ToString();
            string sql = "select  * from Phieuycvt where Mahoadon='" + madon + "' ";
            SqlCommand cmd1 = new SqlCommand(sql, conn1);
            conn1.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            while (reader.Read())
            {
                Label7.Text = reader["Congty"].ToString();
                Label13.Text = reader["StatusYcvt"].ToString();
            }
            reader.Close();
            conn1.Close();

            if (Label7.Text.Equals("CÔNG TY CỔ PHẦN CÔNG NGHỆ MEKONG"))
            {
                Image2.Visible = false;
                Image3.Visible = false;
            }
            else if (Label7.Text.Equals("CÔNG TY TNHH THƯƠNG MẠI VÀ KỸ THUẬT THÁI BÌNH"))
            {
                Image1.Visible = false;
                Image3.Visible = false;
            }
            else if (Label7.Text.Equals("CÔNG TY TNHH KỸ THUẬT VÀ XÂY DỰNG SONG NAM"))
            {
                Image1.Visible = false;
                Image2.Visible = false;
            }

        }
        protected void abc_Click(object sender, EventArgs e)
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
            if (Label3.Text.Equals("kho"))
            {
                Response.Redirect("~/Admin/PXKtheoYCVT.aspx?idnsx=" + Label5.Text);
            }
            else
            {
                Response.Write("<Script>alert('Bạn Không thể tạo đơn')</Script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            thoat.Visible = true;
            string axc = Label5.Text + "-1";
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("Select * from vattuyeucau where Mahoadon='" + axc + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    if (data.Rows.Count > 0)
                    {
                        load61();
                        abc.Visible = false;
                        GridView2.Visible = false;
                        Button1.Visible = false;
                        xuatphieuthieu.Visible = true;
                        huy.Visible = true;
                        //Response.Write("<Script>alert('yy')</Script>");
                    }
                    else
                    {
                        for (int i = 0; i < GridView2.Rows.Count; i++)
                        {
                            string s = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[1].Text.Trim().ToString()));
                            string s1 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[2].Text.Trim().ToString()));
                            string s2 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[3].Text.Trim().ToString()));
                            string s3 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[4].Text.Trim().ToString()));
                            string s4 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[5].Text.Trim().ToString()));
                            string s5 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[6].Text.Trim().ToString()));
                            string s6 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[7].Text.Trim().ToString()));
                            string s7 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[8].Text.Trim().ToString()));
                            string s8 = HttpUtility.HtmlDecode((string)(GridView2.Rows[i].Cells[9].Text.Trim().ToString()));
                            using (var cnn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
                            {
                                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                                SqlConnection conn1 = new SqlConnection(connectionstring);
                                SqlCommand cmd = new SqlCommand("INSERT INTO vattuyeucau(Mahoadon,Masp,Tensp,Hangsanxuat,Donvi,Soluong,SLXuat,Ghichu,Serial,Diachi) values(@mahoadon, @masp, @tensp, @hangsanxuat, @donvi, @soluong, @slxuat, @ghichu, @serial, @diachi)", conn1);
                                cmd.Parameters.AddWithValue("@mahoadon", SqlDbType.NVarChar).Value = axc;
                                cmd.Parameters.AddWithValue("@masp", SqlDbType.NVarChar).Value = s;
                                cmd.Parameters.AddWithValue("@tensp", SqlDbType.NVarChar).Value = s1;
                                cmd.Parameters.AddWithValue("@hangsanxuat", SqlDbType.NVarChar).Value = s2;
                                cmd.Parameters.AddWithValue("@donvi", SqlDbType.NVarChar).Value = s3;
                                cmd.Parameters.AddWithValue("@soluong", SqlDbType.NVarChar).Value = s4;
                                cmd.Parameters.AddWithValue("@slxuat", SqlDbType.NVarChar).Value = s4;
                                cmd.Parameters.AddWithValue("@ghichu", SqlDbType.NVarChar).Value = s6;
                                cmd.Parameters.AddWithValue("@serial", SqlDbType.NVarChar).Value = s7;
                                cmd.Parameters.AddWithValue("@diachi", SqlDbType.NVarChar).Value = s8;
                                conn1.Open();
                                cmd.ExecuteNonQuery();
                                conn1.Close();
                                //   xuatphieuthieu.Visible = false;
                            }
                        }
                        load61();
                        abc.Visible = false;
                        GridView2.Visible = false;
                        Button1.Visible = false;
                        xuatphieuthieu.Visible = true;
                        huy.Visible = true;
                    }
                }
            }

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            load();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string masp = GridView1.Rows[e.RowIndex].Cells[1].Text;
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("delete vattuyeucau where Masp='" + masp + "'", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    load61();
                    abc.Visible = false;
                    GridView2.Visible = false;
                    Button1.Visible = false;
                    xuatphieuthieu.Visible = true;
                    huy.Visible = true;
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            load61();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("style", "background-color: #FFFFFF; color: black;");
                    e.Row.Attributes.Add("onmouseover", "style.backgroundColor='#87CEFA'");
                    e.Row.Attributes.Add("onmouseout", "style.backgroundColor='#FFFFFF'");
                }
            }
            catch { }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            load61();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-1";
            string masp = GridView1.Rows[e.RowIndex].Cells[1].Text;
            string tensp = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string nhasx = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string donvi = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string soluong = GridView1.Rows[e.RowIndex].Cells[5].Text;
            string soluongsx = (GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            string nghichu = (GridView1.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            string seri = (GridView1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            string dc = (GridView1.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text;
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn2 = new SqlDataAdapter("Update vattuyeucau set Tensp=N'" + tensp + "',Hangsanxuat=N'" + nhasx + "',Donvi=N'" + donvi + "',Soluong='" + soluong + "',SLXuat='" + soluongsx + "',Ghichu=N'" + nghichu + "',Serial=N'" + seri + "',Diachi=N'" + dc + "' where Mahoadon='" + madon1 + "' and Masp='" + masp + "'", cnn))
                {
                    var data = new DataTable();
                    conn2.Fill(data);
                }
            }
            GridView1.EditIndex = -1;
            load61();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            load61();
        }

        public void loaddonthieu()
        {
            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                string axc = Label5.Text + "-thieu";
                string s = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[1].Text.Trim().ToString()));
                string s1 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[2].Text.Trim().ToString()));
                string s2 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[3].Text.Trim().ToString()));
                string s3 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[4].Text.Trim().ToString()));
                string s4 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[5].Text.Trim().ToString()));
                string s5 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[6].Text.Trim().ToString()));
                string s6 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[7].Text.Trim().ToString()));
                string s7 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[8].Text.Trim().ToString()));
                string s8 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[9].Text.Trim().ToString()));
                int checksl = int.Parse(s4);
                int slxuat = int.Parse(s5);
                int thieu = checksl - slxuat;
                using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
                {
                    string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                    SqlConnection conn = new SqlConnection(connectionstring);
                    SqlCommand cmd = new SqlCommand("INSERT INTO vattuyeucau(Mahoadon,Masp,Tensp,Hangsanxuat,Donvi,Soluong,SLXuat,Ghichu,Serial,Diachi) values(@mahoadon, @masp, @tensp, @hangsanxuat, @donvi, @soluong, @slxuat, @ghichu, @serial, @diachi)", conn);
                    cmd.Parameters.AddWithValue("@mahoadon", SqlDbType.NVarChar).Value = axc;
                    cmd.Parameters.AddWithValue("@masp", SqlDbType.NVarChar).Value = s;
                    cmd.Parameters.AddWithValue("@tensp", SqlDbType.NVarChar).Value = s1;
                    cmd.Parameters.AddWithValue("@hangsanxuat", SqlDbType.NVarChar).Value = s2;
                    cmd.Parameters.AddWithValue("@donvi", SqlDbType.NVarChar).Value = s3;
                    cmd.Parameters.AddWithValue("@soluong", SqlDbType.NVarChar).Value = s4;
                    cmd.Parameters.AddWithValue("@slxuat", SqlDbType.NVarChar).Value = thieu;
                    cmd.Parameters.AddWithValue("@ghichu", SqlDbType.NVarChar).Value = s6;
                    cmd.Parameters.AddWithValue("@serial", SqlDbType.NVarChar).Value = s7;
                    cmd.Parameters.AddWithValue("@diachi", SqlDbType.NVarChar).Value = s8;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
        String result = "";

        protected void xuatphieuthieu_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            string axt = Label5.Text + "-thieu";
            using (var cnn1 = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn1 = new SqlDataAdapter("Select * from vattuyeucau where Mahoadon='" + axt + "' ", cnn1))
                {
                    var data = new DataTable();
                    conn1.Fill(data);
                    if (data.Rows.Count > 0)
                    {
                        load61();
                        abc.Visible = false;
                        GridView2.Visible = false;
                        Button1.Visible = false;
                        xuatphieuthieu.Visible = true;
                        huy.Visible = true;
                    }
                    else
                    {
                        //insert phiếu thiếu sản phẩm
                        for (int i = 0; i < GridView1.Rows.Count; i++)
                        {
                            string axc = Label5.Text + "-thieu";
                            string s = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[1].Text.Trim().ToString()));
                            string s1 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[2].Text.Trim().ToString()));
                            string s2 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[3].Text.Trim().ToString()));
                            string s3 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[4].Text.Trim().ToString()));
                            string s4 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[5].Text.Trim().ToString()));
                            string s5 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[6].Text.Trim().ToString()));
                            string s6 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[7].Text.Trim().ToString()));
                            string s7 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[8].Text.Trim().ToString()));
                            string s8 = HttpUtility.HtmlDecode((string)(GridView1.Rows[i].Cells[9].Text.Trim().ToString()));
                            int checksl = int.Parse(s4);
                            int slxuat = int.Parse(s5);
                            int thieu = checksl - slxuat;
                            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
                            {
                                string connectionstring = ConfigurationManager.ConnectionStrings["Tbecon"].ConnectionString;
                                SqlConnection conn = new SqlConnection(connectionstring);
                                SqlCommand cmd = new SqlCommand("INSERT INTO vattuyeucau(Mahoadon,Masp,Tensp,Hangsanxuat,Donvi,Soluong,SLXuat,Ghichu,Serial,Diachi) values(@mahoadon, @masp, @tensp, @hangsanxuat, @donvi, @soluong, @slxuat, @ghichu, @serial, @diachi)", conn);
                                cmd.Parameters.AddWithValue("@mahoadon", SqlDbType.NVarChar).Value = axc;
                                cmd.Parameters.AddWithValue("@masp", SqlDbType.NVarChar).Value = s;
                                cmd.Parameters.AddWithValue("@tensp", SqlDbType.NVarChar).Value = s1;
                                cmd.Parameters.AddWithValue("@hangsanxuat", SqlDbType.NVarChar).Value = s2;
                                cmd.Parameters.AddWithValue("@donvi", SqlDbType.NVarChar).Value = s3;
                                cmd.Parameters.AddWithValue("@soluong", SqlDbType.NVarChar).Value = s4;
                                cmd.Parameters.AddWithValue("@slxuat", SqlDbType.NVarChar).Value = thieu;
                                cmd.Parameters.AddWithValue("@ghichu", SqlDbType.NVarChar).Value = s6;
                                cmd.Parameters.AddWithValue("@serial", SqlDbType.NVarChar).Value = s7;
                                cmd.Parameters.AddWithValue("@diachi", SqlDbType.NVarChar).Value = s8;
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }
                        load61();
                        abc.Visible = false;
                        GridView2.Visible = false;
                        Button1.Visible = false;
                        xuatphieuthieu.Visible = true;
                        huy.Visible = true;
                    }
                }
            }
        }

        protected void donxuat1_Click(object sender, EventArgs e)
        {
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-1";
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("select  * from vattuyeucau where Mahoadon='" + madon1 + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    
                    Label1.Text = Label5+"-1";
                    GridView3.DataSource = data;
                    GridView3.DataBind();
                }
            }
            huy.Visible = true;
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView4.Visible = false;
            GridView3.Visible = true;
            xyz.Visible = true;
            taodonxuatthieu.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            loaddonthieu();
        }

        protected void Spthieu_Click(object sender, EventArgs e)
        {
            GridView4.Visible = true;
            string madon = Request.QueryString["idnsx"].ToString();
            string madon1 = madon + "-thieu";
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("select  * from vattuyeucau where Mahoadon='" + madon1 + "' and SLXuat!=0 ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    GridView4.DataSource = data;
                    GridView4.DataBind();
                }
            }

            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView2.Visible = false;
            xyz.Visible = false;
            taodonxuatthieu.Visible = true;
        }

        protected void xyz_Click(object sender, EventArgs e)
        {
            //tạo đon xuất 1
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
            string layid = Label5.Text + "-1";
            if (Label3.Text.Equals("kho"))
            {
                Response.Redirect("~/Admin/PXKtheoYCVT1.aspx?idnsx=" + Label5.Text);
            }
            else
            {
                Response.Write("<Script>alert('Bạn Không thể tạo đơn')</Script>");
            }
        }

        protected void donyeucauvattu_Click(object sender, EventArgs e)
        {
            //phiếu yêu cầu vật tư
            string madon = Request.QueryString["idnsx"].ToString();
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                using (var conn = new SqlDataAdapter("select  * from vattuyeucau where Mahoadon='" + madon + "' ", cnn))
                {
                    var data = new DataTable();
                    conn.Fill(data);
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }
            GridView1.Visible = false;
            GridView2.Visible = true;
            GridView3.Visible = false;
            GridView4.Visible = false;
            xyz.Visible = false;
            taodonxuatthieu.Visible = false;
        }

        protected void taodonxuatthieu_Click(object sender, EventArgs e)
        {
            //tạo đon xuất thiếu
        }

        protected void Button3_Load(object sender, EventArgs e)
        {
            string madon = Request.QueryString["idnsx"].ToString();
            Session["ADminID1"] = madon;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            load61();
            abc.Visible = false;
            GridView2.Visible = false;
            Button1.Visible = false;
            xuatphieuthieu.Visible = true;
            huy.Visible = true;
            Response.Write("<Script>alert('cuanhnely')</Script>");
        }

        protected void huy_Click(object sender, EventArgs e)
        {
            string madon = Request.QueryString["idnsx"].ToString();
            using (var cnn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Tbecon"].ToString()))
            {
                string ID1 =madon+"-1";
                using (var conn1 = new SqlDataAdapter("Delete from vattuyeucau where Mahoadon='" + ID1 + "' ", cnn))
                {
                    var data1 = new DataTable();
                    conn1.Fill(data1);
                }
                string ID2 = madon +"-thieu"; 
                using (var conn2 = new SqlDataAdapter("Delete from vattuyeucau where Mahoadon='" + ID2 + "' ", cnn))
                {
                    var data2 = new DataTable();
                    conn2.Fill(data2);
                }
            }
            Response.Redirect("~/Admin/Viewcomplete.aspx?idnsx=" + madon);
        }

        protected void thoat_Click(object sender, EventArgs e)
        {
            string madon = Request.QueryString["idnsx"].ToString();
            Response.Redirect("~/Admin/Viewcomplete.aspx?idnsx=" + madon);
        }
    }
}
