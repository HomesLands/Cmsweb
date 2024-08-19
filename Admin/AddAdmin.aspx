<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Banhang.Admin.AddAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="frm" runat="server">
        <asp:Label ID="manotification" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="nycnotification" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="managernotification" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label37" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label38" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label39" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label40" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label41" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label42" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label43" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label44" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label45" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label46" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label47" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label48" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label49" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label50" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label51" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label52" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label53" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label54" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label55" runat="server" Text="0"></asp:Label>
        <asp:Label ID="manager" runat="server" Text="0"></asp:Label>
        <asp:Label ID="anhload" runat="server" Text="0"></asp:Label>
        <asp:Label ID="anhload1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho2" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho3" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho4" runat="server" Text="0"></asp:Label>
        <asp:Label ID="hotenad" runat="server" Text="Label"></asp:Label>
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <div class="navbar-form">
                        <div class="input-group no-border">
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        </div>

                    </div>
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">notifications</i>
                                <span class="notification">
                                    <asp:Label ID="countnoti" runat="server" Text="0"></asp:Label></span>
                                <p class="d-lg-none d-md-block">
                                    Some Actions
                 
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <div style="width: 560px;">

                                    <asp:ListView ID="ListView2" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-danger">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <i class="material-icons">close</i>
                                                </button>
                                                <span>
                                                    <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Cần Duyệt!"></asp:Label></a>
                                                </span>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView5" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-danger">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                            <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                            <asp:Label ID="Label9" runat="server" Text="Chờ Hoàn Đơn"></asp:Label></a>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView7" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-success">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc2") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Duyệt Đơn."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView11" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-warning">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Bị">
                                                        </asp:Label><asp:Label ID="Label35" runat="server" Text=" Hủy Đơn. Kiểm Tra Và Nộp Lại."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView8" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-inverse">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Bị">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc2") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Hủy Đơn"></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView12" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-danger">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Bị">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc3") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Hủy Đơn"></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>


                                    <asp:ListView ID="ListView4" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-info">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc3") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Duyệt Bước 3."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView3" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-success">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc2") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Duyệt Bước 2."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView6" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-primary">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc3") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Hủy Bước 3."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView9" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-info">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc3") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Duyệt Bước 3."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="ListView10" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-warning">
                                                <a href="Viewphieuycvt.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Của Bạn Đã Được">
                                                            <asp:Label ID="Label36" runat="server">&nbsp;<%# Eval("Tenduyetbuoc1") %>&nbsp;</asp:Label></asp:Label><asp:Label ID="Label35" runat="server" Text="Duyệt Bước 1."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="kholist1" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-danger">
                                                <a href="Viewcomplete.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label9" runat="server" Text="Bạn Có Phiếu YCVT Mới Số:"></asp:Label>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="kholist2" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-warning">
                                                <a href="ViewPXKtheoYCVT.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Đã Được Xác Nhận, Trạng Thái Chờ Vận Chuyễn"></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="kholist3" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-success">
                                                <a href="ViewPXKtheoYCVT.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Đang Trên Đường Giao"></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <asp:ListView ID="kholist4" runat="server">
                                        <ItemTemplate>
                                            <div class="alert alert-primary">
                                                <a href="ViewPXKtheoYCVT.aspx?idnsx=<%#Eval("Mahoadon") %>" data-tooltip="<%#Eval("Mahoadon") %>">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                    <span>
                                                        <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text="Giao Thất Bại."></asp:Label>
                                                    </span>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </div>
                            </div>  
                            
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <style>
                                    .iconhinh {
                                        border-radius: 100%;
                                    }                    
                                </style>
                                <asp:Image ID="Image3" runat="server" Width="80px" class="iconhinh" />
                                <p class="d-lg-none d-md-block">
                                    Tài Khoản
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                <a class="dropdown-item" href="Profile.aspx">Thông Tin Tài Khoản</a>
                                <a class="dropdown-item" href="ChangePass.aspx">Đổi Pass</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Logout.aspx">Thoát</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Thêm Nhân Sự</h4>
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tên Nhân Viên</label>
                                            <asp:TextBox ID="tenad" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label1" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Email</label>
                                            <asp:TextBox ID="email" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label9" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Username</label>
                                            <asp:TextBox ID="usernbame" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label3" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Password</label>
                                            <asp:TextBox ID="password" runat="server" TabIndex="1" class="form-control" TextMode="Password"></asp:TextBox>
                                            <ajaxToolkit:PasswordStrength ID="password_PasswordStrength" runat="server" BehaviorID="password_PasswordStrength" TargetControlID="password"></ajaxToolkit:PasswordStrength>
                                            <asp:Label ID="Label5" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Địa Chỉ</label>
                                            <asp:TextBox ID="diachi" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label7" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Số Điện Thoại</label>
                                            <asp:TextBox ID="sdt" runat="server" TabIndex="1" class="form-control" TextMode="Phone"></asp:TextBox>
                                            <asp:Label ID="Label8" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">CMND</label>
                                            <asp:TextBox ID="cmnd" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label13" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Chức Vụ</label>
                                            <br />
                                            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 250px;" class="form-control">
                                                <asp:ListItem Value="giamdoc">Giám Đốc</asp:ListItem>
                                                <asp:ListItem Value="giamdoc">Phó Giám Đốc</asp:ListItem>
                                                <asp:ListItem Value="ktt">Kế Toán Trưởng</asp:ListItem>
                                                <asp:ListItem Value="ketoan">Kế Toán</asp:ListItem>
                                                <asp:ListItem Value="kho">Kế Toán Kho</asp:ListItem>
                                                <asp:ListItem Value="it">IT</asp:ListItem>
                                                <asp:ListItem Value="tpns">Trưởng Phòng HCNS</asp:ListItem>
                                                <asp:ListItem Value="nvhcns">Nhân Viên HCNS</asp:ListItem>
                                                <asp:ListItem Value="giaonhan">Nhân Viên Giao Nhận</asp:ListItem>
                                                <asp:ListItem Value="tpda">Trưởng Phòng Dự Án</asp:ListItem>
                                                <asp:ListItem Value="ppda">Phó Phòng Dự Án</asp:ListItem>
                                                <asp:ListItem Value="nvpda">NV Phòng Dự Án</asp:ListItem>
                                                <asp:ListItem Value="tpmh">Trưởng Phòng Mua Hàng</asp:ListItem>
                                                <asp:ListItem Value="muahang">Nhân Viên Mua Hàng</asp:ListItem>
                                                <asp:ListItem Value="tpkehoach">Trưởng Phòng Kế Hoạch</asp:ListItem>
                                                <asp:ListItem Value="thukho">Thủ Kho</asp:ListItem>
                                                <asp:ListItem Value="thuquy">Thủ Quỷ</asp:ListItem>
                                                <asp:ListItem Value="chihuytruong">Chỉ Huy Trưởng</asp:ListItem>
                                                <asp:ListItem Value="gs">Giám Sát</asp:ListItem>
                                                <asp:ListItem Value="gsd">Giám Sát Điện</asp:ListItem>
                                                <asp:ListItem Value="gsck">Giám Sát Cơ Khí</asp:ListItem>
                                                <asp:ListItem Value="gsat">Giám Sát An Toàn</asp:ListItem>
                                                <asp:ListItem Value="thohan">Thợ Hàn</asp:ListItem>
                                                <asp:ListItem Value="thocokhi">Thợ Cơ Khí</asp:ListItem>
                                                <asp:ListItem Value="baotridien">Bảo Trì-Thi Công Điện</asp:ListItem>
                                                <asp:ListItem Value="baotricokhi">Bảo Trì-Thi Công Cơ Khí</asp:ListItem>
                                                <asp:ListItem Value="nhanvien">NV Kỹ Thuật Điện</asp:ListItem>
                                                <asp:ListItem Value="qsqc">QSQC</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Ngay Sinh</label>
                                            <asp:TextBox ID="ngaysinhtx" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Bô Phận</label>
                                            <br />
                                            <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 250px;" class="form-control">
                                                <asp:ListItem Value="Văn Phòng">Văn Phòng</asp:ListItem>
                                                <asp:ListItem Value="Site Quận 9">Site Quận 9</asp:ListItem>
                                                <asp:ListItem Value="Site P&G">Site P&G</asp:ListItem>
                                                <asp:ListItem Value="Site Glomed">Site Glomed</asp:ListItem>
                                                <asp:ListItem Value="Site SC Johnson">Site SC Johnson</asp:ListItem>
                                                <asp:ListItem Value="Site Đa Phước">Site Đa Phước</asp:ListItem>
                                                <asp:ListItem Value="Site Abbott">Site Abbott</asp:ListItem>
                                               <asp:ListItem Value="Site Bia AB">Site Bia AB</asp:ListItem>   
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <label class="bmd-label-floating">Ảnh Chân Dung</label>
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                    </div>
                                    <div class="col-md-5">
                                        <asp:Image ID="Image1" runat="server" Width="150px" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <label class="bmd-label-floating">Chữ Ký</label>
                                        <asp:FileUpload ID="FileUpload" runat="server" class="form-control" />
                                    </div>
                                    <div class="col-md-5">
                                        <asp:Image ID="Image2" runat="server" Width="150px" />
                                    </div>
                                </div>
                                <br />
                                <asp:Button ID="gui" runat="server" OnClick="gui_Click" class="btn btn-primary pull-left" Text="Lưu" />
                                <asp:Label ID="Label2" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <div class="clearfix"></div>
                                <br />
                                <div class="table-responsive">
                                    <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="lvCustomers_PagePropertiesChanging">
                                        <LayoutTemplate>
                                            <table class="table" border="1">
                                                <tr>
                                                    <th style="align-content: center;">STT</th>
                                                    <th style="align-content: center;">Tên Nhân Sự</th>
                                                    <th style="align-content: center;">Ngày Sinh</th>
                                                    <th style="align-content: center;">Địa Chỉ</th>
                                                    <th style="align-content: center;">Điện Thoại</th>
                                                    <th style="align-content: center;">Email</th>
                                                    <th style="align-content: center;">Update</th>
                                                    <th style="align-content: center;">KPI</th>
                                                </tr>
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                                <tr>
                                                    <td colspan="12">
                                                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="3">
                                                            <Fields>
                                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                                    ShowNextPageButton="false" />
                                                                <asp:NumericPagerField ButtonType="Button" ButtonCount="10" />
                                                                <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                                                            </Fields>
                                                        </asp:DataPager>
                                                    </td>
                                                </tr>
                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                                            </tr>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server"><%# Eval("HoTen") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server"><%# Eval("NgaySinh") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server"><%# Eval("DiaChi") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label12" runat="server"><%# Eval("DT") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server"><%# Eval("Email") %></asp:Label>
                                            </td>
                                            <td>
                                                <a href="ThongtinAdmin.aspx?idad=<%#Eval("MaAD") %>" data-tooltip="<%#Eval("MaAD") %>">Update</a>
                                            </td>
                                            <td>
                                                <a href="KPI.aspx?idad=<%#Eval("MaAD") %>" data-tooltip="<%#Eval("MaAD") %>">KPI</a>
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
