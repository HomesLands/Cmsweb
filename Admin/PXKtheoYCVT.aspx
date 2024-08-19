<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="PXKtheoYCVT.aspx.cs" Inherits="TBE.Admin.PXKtheoYCVT" %>

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
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
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
                                <asp:Image ID="Image3" runat="server" Width="80px"  class="iconhinh" />
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
                                <h4 class="card-title">Phiếu Xuất Kho</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <asp:Label ID="Label25" runat="server" Text="Mã Số Phiếu :" class="bmd-label-floating"></asp:Label>
                                            <asp:Label ID="madon" runat="server" Text="Label" class="form-control"></asp:Label>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary pull-left" Text="Tạo Mã Số Phiếu" />
                                            <asp:Label ID="Lmadon" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Mã YCVT Số:</label>
                                            <asp:Label ID="SoYCVT" runat="server" Text="Label" class="form-control"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Người Nhận :</label>
                                            <asp:Label ID="nguoinhanycvt" runat="server" TabIndex="1" class="form-control"></asp:Label>
                                            <asp:Label ID="Lnguoinhan" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Xuất Tại Kho :</label>
                                            <asp:DropDownList ID="Xuattaikho" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tên Công Ty :</label>
                                            <asp:DropDownList ID="tencongty" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Địa Chỉ :</label><br />
                                            <asp:Label ID="Label4" runat="server"  class="bmd-label-floating"></asp:Label>
                                            <asp:Label ID="Label56" runat="server" Text="Label"  class="form-control" >Số 26 Đường N2, Phường Phú Hữu, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam</asp:Label>
                                            <asp:Label ID="Label57" runat="server" Text="Label"  class="form-control">205/14, Đường Linh Trung, KP1, P.Linh Trung, TP.Thủ Đức, TP.HCM, Việt Nam</asp:Label>
                                            <asp:Label ID="Label58" runat="server" Text="Label"  class="form-control">184 Đường Linh Trung, Phường Linh Trung, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam</asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Thủ Kho :</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Xuất Cho Công Trình :</label>
                                            <asp:DropDownList ID="xuatct" runat="server" AutoPostBack="True" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <asp:Button ID="gui" runat="server" OnClick="gui_Click" class="btn btn-primary pull-left" Text="Thêm" />
                                <asp:Label ID="Label2" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
