<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddPhieuYCVT.aspx.cs" Inherits="Banhang.Admin.AddPhieuYCVT" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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
        <asp:Label ID="manager" runat="server" Text="0"></asp:Label>
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
        <asp:Label ID="kho1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho2" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho3" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho4" runat="server" Text="0"></asp:Label>
        <asp:Label ID="tenduyetb1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="tenduyetb2" runat="server" Text="0"></asp:Label>
        <asp:Label ID="slton" runat="server" Text="0"></asp:Label>
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
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
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
                <div class="row" id="cod" runat="server">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Thêm Phiếu Yêu Cầu Vật Tư</h4>
                                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:Label ID="Label56" runat="server" Text="Label" Style="color: #000000; font-weight: bold;" class="bmd-label-floating">CÔNG TY TNHH THƯƠNG MẠI VÀ KỸ THUẬT THÁI BÌNH</asp:Label>
                                            <asp:Label ID="Label57" runat="server" Text="Label" Style="color: #000000; font-weight: bold;" class="bmd-label-floating">CÔNG TY TNHH KỸ THUẬT VÀ XÂY DỰNG SONG NAM</asp:Label>
                                            <asp:Label ID="Label58" runat="server" Text="Label" Style="color: #000000; font-weight: bold;" class="bmd-label-floating">CÔNG TY CỔ PHẦN CÔNG NGHỆ MEKONG</asp:Label>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <div class="form-group">

                                            <asp:Label ID="Label25" runat="server" Text="Mã Số Phiếu :" class="bmd-label-floating"></asp:Label>
                                            <asp:Label ID="madon" runat="server" Text="Label" class="form-control"></asp:Label>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary pull-left" Text="Tạo Mã Số Phiếu" />
                                            <asp:Label ID="Lmadon" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Người Yêu Cầu :</label>
                                            <asp:Label ID="hotenad" runat="server" TabIndex="1" class="form-control"></asp:Label>
                                            <asp:Label ID="Lnguoiyeucau" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Công trình sử dụng :</label>
                                            <asp:DropDownList ID="xuatct" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Dự án :</label>
                                            <asp:TextBox ID="Duan" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="LDuan" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Người Duyệt Đơn :</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Nghi Chú :</label>
                                            <asp:TextBox ID="nghichu1" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <br />

                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <a href="MauYCVT.xlsx">Dowload File Mẫu</a><br />
                                <asp:Label ID="Label12" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <asp:Label ID="Label6" runat="server"></asp:Label>

                                <asp:Button ID="gui" runat="server" OnClick="gui_Click" class="btn btn-primary pull-left" Text="Thêm" />
                                <asp:Label ID="Label2" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" runat="server" id="xyz">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <div runat="server">
                                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" class="btn btn-primary pull-left" Text="Turn On Thông Tin Phiếu" />
                                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" class="btn btn-primary pull-left" Text="Turn Off Thông Tin Phiếu" />
                                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" class="btn btn-danger pull-left" Text="Gửi Đơn" />
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tìm Kiếm Sản Phẩm</label><br />
                                            <asp:TextBox ID="txt_autocomplete" runat="server" ClientIDMode="Static" autocomplete="on" class="form-control"></asp:TextBox>
                                            <asp:Button ID="Button6" runat="server" Text="Tìm Kiếm" class="btn btn-primary pull-left" OnClick="Button6_Click" />
                                            <asp:Label ID="Label5" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>

                                </div>

                                <br />
                                <br />
                                <div class="table-responsive">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="lvCustomers_PagePropertiesChanging">
                                            <LayoutTemplate>
                                                <table class="table" border="1">
                                                    <tr>
                                                        <th style="align-content: center;">STT</th>
                                                        <th style="align-content: center;">Mã SP</th>
                                                        <th style="align-content: center;">Tên SP</th>
                                                        <th style="align-content: center;">Model/Serial Number</th>
                                                        <th style="align-content: center;">Nhà Cung Cấp</th>
                                                        <th style="align-content: center;">Ngày Nhập</th>
                                                        <th style="align-content: center;">Đơn Vị Tính</th>
                                                        <th style="align-content: center;">Số Lượng</th>
                                                        <th style="align-content: center;">Địa Chỉ</th>
                                                        <th style="align-content: center;">Nghi Chú</th>
                                                        <th style="align-content: center;">Chức Năng</th>
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
                                                    <asp:Label ID="tenid" runat="server"><%# Eval("MaSP") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server"><%# Eval("TenSP") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label14" runat="server"><%# Eval("MaModel") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server"><%# Eval("MaSX") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server"><%# Eval("NgayNhap") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label15" runat="server"><%# Eval("DonGia") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label13" runat="server"><%# Eval("SLTon") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server"><%# Eval("Diachi") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server"><%# Eval("GhiChu") %></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnkCustomize" Text="Add" CommandName="Add" CommandArgument='<%# Eval("MaSP") %>' runat="server" OnCommand="lnkCustomize_Command2"> </asp:LinkButton>
                                                </td>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </asp:Panel>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>


                <div class="row" runat="server" id="abc">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <div id="nhan1" runat="server">
                                    <h4 class="card-title">
                                        <asp:Label ID="Label33" runat="server" Text="Thêm Vật Tư Vào Phiếu"></asp:Label>
                                        <asp:Label ID="Label34" runat="server" Text="Update Vật Tư"></asp:Label>
                                    </h4>
                                </div>
                                <div id="nhan2" runat="server">
                                    <h4 class="card-title">Cập Nhật Số Lượng Sản Phẩm </h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox5" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label17" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:Label class="bmd-label-floating" ID="tsp" runat="server">Tên Sản Phẩm :</asp:Label>
                                            <asp:TextBox ID="TextBox4" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label19" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating" id="seri" runat="server">Serial Number :</label>
                                            <asp:TextBox ID="serialnumber" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Lserialnumber" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:Label class="bmd-label-floating" ID="nsx" runat="server">Nhà Sản Xuất :</asp:Label>
                                            <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label20" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <asp:Label class="bmd-label-floating" ID="dgt" runat="server">Đơn Vị Tính</asp:Label>
                                                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Số Lượng :</label>
                                            <asp:TextBox ID="TextBox2" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label21" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:Label class="bmd-label-floating" ID="nghichu" runat="server">Nghi Chú :</asp:Label>
                                            <asp:TextBox ID="TextBox6" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                            <asp:Label ID="Label18" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <asp:Label ID="Label22" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <asp:Label ID="Label23" runat="server"></asp:Label>

                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary pull-left" Text="Thêm" />

                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="btn btn-primary pull-left" Text="Cập Nhật" />
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" class="btn btn-primary pull-left" Text="làm Mới" />
                                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" class="btn btn-primary pull-left" Text="Cập Nhật" />
                                <asp:Label ID="Label24" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="table-responsive">
                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="ListView1_PagePropertiesChanging" OnItemUpdating="ListView1_ItemUpdating">
                                        <LayoutTemplate>
                                            <table class="table" border="1">
                                                <tr>
                                                    <th style="align-content: center;">STT</th>
                                                    <th style="align-content: center;">Tên Sản Phẩm</th>
                                                    <th style="align-content: center;">Mã Sản Phẩm</th>
                                                    <th style="align-content: center;">Serial Number</th>
                                                    <th style="align-content: center;">Hãng Sản Xuất</th>
                                                    <th style="align-content: center;">Đơn vị</th>
                                                    <th style="align-content: center;">Số lượng</th>
                                                    <th style="align-content: center;">Địa Chỉ</th>
                                                    <th style="align-content: center;">Ghi chú</th>
                                                    <th style="align-content: center;">Update</th>
                                                    <th style="align-content: center;">Delete</th>
                                                </tr>
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                                <tr>
                                                    <td colspan="12">
                                                        <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView1" PageSize="3">
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
                                                <asp:Label ID="Label4" runat="server"><%# Eval("Tensp") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label15" runat="server"><%# Eval("Masp") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="serialnum" runat="server"><%# Eval("Serial") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="tenid" runat="server"><%# Eval("Hangsanxuat") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server"><%# Eval("Donvi") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server"><%# Eval("Soluong") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label31" runat="server"><%# Eval("Diachi") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server"><%# Eval("Ghichu") %></asp:Label>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="LinkUpdate" Text="Update" CommandName="Update" CommandArgument='<%# Eval("Masp") %>' runat="server" OnCommand="LinkUpdate_Command"> </asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lnkCustomize" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("Masp") %>' runat="server" OnCommand="lnkCustomize_Command" OnClientClick="return confirm('Bạn có chắc muốn xóa?');"> </asp:LinkButton>
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</asp:Content>
