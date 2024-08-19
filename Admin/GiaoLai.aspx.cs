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

namespace TBE.Admin
{
    public partial class GiaoLai : System.Web.UI.Page
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
                    load1();
                    load();
                    Label26.Visible = false;
                    Label27.Visible = false;
                    Label29.Visible = false;
                    Label30.Visible = false;
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
                    kho1.Visible = false;
                    kho2.Visible = false;
                    kho3.Visible = false;
                    kho4.Visible = false;
                    hotenad.Visible = false;
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
                hotenad.Text = reader["HoTen"].ToString();
            }
            reader.Close();
            conn1.Close();
            if (Label3.Text.Equals("khach"))
            {
                Response.Redirect("~/Admin/Chantruycap.aspx");
            }
        }
        protected void load()
        {
            var sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Tbecon"].ToString());
            var sqlda = new SqlDataAdapter("SELECT * from Xuatkho where StatusPXK=N'Đang Giao Hàng' ", sqlcon);
            var dt1 = new DataTable();
            sqlda.Fill(dt1);
            lvCustomers.DataSource = dt1;
            lvCustomers.DataBind();
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

        protected void lvCustomers_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lvCustomers.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.load();
        }
    }
}