<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Viewphieuycvt.aspx.cs" Inherits="Banhang.Admin.Viewphieuycvt" %>
<asp:Content ID="ScriptContent" ContentPlaceHolderID="localScripts" runat="server">
</asp:Content>

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
        <asp:Label ID="manager" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label49" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label50" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label51" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label52" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label53" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label54" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label55" runat="server" Text="0"></asp:Label>
        <asp:Label ID="tenlog" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho2" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho3" runat="server" Text="0"></asp:Label>
        <asp:Label ID="kho4" runat="server" Text="0"></asp:Label>
        <asp:Label ID="hotenad" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="timroles" runat="server" Text="Label"></asp:Label>
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
                                <asp:Image ID="Image4" runat="server" Width="80px" class="iconhinh" />
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
                                <asp:Label ID="Label7" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                <asp:Button ID="Button11" runat="server" Text="File Log" OnClick="Button11_Click" class="btn btn-primary pull-left"   />
                                <asp:Button ID="Button12" runat="server" Text="Ẩn File Log" OnClick="Button12_Click" class="btn btn-primary pull-left"  />
                            </div>
                            <div class="card-body">
                                <div class="table-responsive" style="overflow-x: hidden;">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <table class="table" border="1">
                                                    <tr>
                                                        <td rowspan="2" style="width: 300px; align-items: center;">
                                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Data Image/123.png" Style="width: 300px; height: 80px;" />
                                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Data Image/456.jpg" Style="width: 230px; height: 140px;" />
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Data Image/789.png" Style="width: 220px; height: 100px;" />
                                                        </td>
                                                        <td rowspan="2" style="width: 665px; font-size: 30px; font-weight: 700; text-align: center;">PHIẾU YÊU CẦU VẬT TƯ</td>
                                                        <td style="width: 180px;">KMH</td>
                                                        <td style="width: 180px;">QR3-01/001</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lần Ban Hành</td>
                                                        <td>1</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; font-size: 12px;">Người Yêu Cầu:</label>
                                                <asp:Label ID="nguoiyeucau" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; font-size: 12px;">Mã Hoá Đơn:</label>
                                                <asp:Label ID="Label5" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; font-size: 12px;">Ngày:</label>
                                                <asp:Label ID="ngay" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; font-size: 12px;">Công Trình Sử Dụng:</label>
                                                <asp:Label ID="congtrinhsudung" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; font-size: 12px;">Dự án:</label>
                                                <asp:Label ID="duan" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <asp:Panel ID="pnlContents" runat="server">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                                                CellPadding="3" DataKeyNames="Masp" OnRowDeleting="GridView1_RowDeleting"
                                                OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound"
                                                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                                                AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="STT">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Masp" HeaderText="Mã Sản Phẩm" ReadOnly="True" />
                                                    <asp:BoundField DataField="Tensp" HeaderText="Tên Sản Phẩm" HeaderStyle-Width="310px" />
                                                    <asp:BoundField DataField="Hangsanxuat" HeaderText="Nhà Sản Xuất" />
                                                    <asp:BoundField DataField="Donvi" HeaderText="Đơn Vị" />
                                                    <asp:BoundField DataField="Soluong" HeaderText="Số Lượng" />
                                                    <asp:BoundField DataField="Ghichu" HeaderText="Ghi Chú" />
                                                    <asp:CommandField ButtonType="Button" ShowEditButton="True" HeaderText="Chức Năng" ShowDeleteButton="True" />
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                            </asp:GridView>
                                        </asp:Panel>
                                    </div>
                                    <div class="table-responsive">
                                        <asp:Panel ID="Panel1" runat="server">
                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"
                                                CellPadding="3" DataKeyNames="Masp"
                                                AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="STT">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Masp" HeaderText="Mã Sản Phẩm" ReadOnly="True" />
                                                    <asp:BoundField DataField="Tensp" HeaderText="Tên Sản Phẩm" HeaderStyle-Width="310px" />
                                                    <asp:BoundField DataField="Hangsanxuat" HeaderText="Nhà Sản Xuất" />
                                                    <asp:BoundField DataField="Donvi" HeaderText="Đơn Vị" />
                                                    <asp:BoundField DataField="Soluong" HeaderText="Số Lượng" />
                                                    <asp:BoundField DataField="Ghichu" HeaderText="Ghi Chú" />
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                            </asp:GridView>
                                        </asp:Panel>
                                    </div>
                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <HeaderTemplate>
                                            <table class="table" border="1">
                                                <tr>
                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">Người Lập Phiếu</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">&emsp;&emsp;Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image5" runat="server" Height="120px" ImageUrl='<%# Eval("CKNYC") %>' Width="160px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">&emsp;CHT</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">&emsp;Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image6" runat="server" Height="120px" ImageUrl='<%# Eval("CKCHT") %>' Width="160px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">Trưởng Phòng</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl='<%# Eval("CKTP") %>' Width="160px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">Giám Đốc Phê Duyệt</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("CKGD") %>' Width="160px" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <div class="row" runat="server" id="MO">
                                        <div class="col-md-12">
                                           
                                        </div>
                                    </div>
                                    <div class="row" runat="server" id="XO">
                                        <div class="col-md-12">
                                            <label id="Label15" runat="server" class="bmd-label-floating" style="color: #FF0000; font-weight: bold;">FIle log sự kiện</label>
                                            <br />

                                            <asp:Label ID="Label24" runat="server" Text="Nhân Viên YCVT:" style="font-weight: bold;"></asp:Label>
                                            <div class="table-responsive">
                                                <asp:Panel ID="Panel5" runat="server">
                                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="false"
                                                        CellPadding="4" DataKeyNames="Mahoadon"
                                                        AllowPaging="True" OnPageIndexChanging="GridView6_PageIndexChanging" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="STT">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Tennguoiduyet" HeaderText="Người Duyệt" HeaderStyle-Width="150px" />
                                                            <asp:BoundField DataField="Status" HeaderText="Trạng Thái" HeaderStyle-Width="110px" />
                                                            <asp:BoundField DataField="NDCHT" HeaderText="Nội Dung" HeaderStyle-Width="310px" />
                                                            <asp:BoundField DataField="dates" HeaderText="Ngày Tháng" />

                                                        </Columns>
                                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>

                                            <asp:Label ID="Label21" runat="server" Text="Chỉ Huy Trưởng:" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label25" runat="server" Text="IT" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label29" runat="server" Text="Kế Toán Kho" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label30" runat="server" Text="Mua Hàng" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label31" runat="server" Text="Kế Toán Viên" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label32" runat="server" Text="Nhân Viên Hành Chánh Nhân Sự" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label33" runat="server" Text="Nhân Viên Phòng Dự Án" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label34" runat="server" Text="Giao Nhận" style="font-weight: bold;"></asp:Label>
                                            <div class="table-responsive">
                                                <asp:Panel ID="Panel2" runat="server">
                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"
                                                        CellPadding="4" DataKeyNames="Mahoadon"
                                                        AllowPaging="True" OnPageIndexChanging="GridView3_PageIndexChanging" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="STT">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Tennguoiduyet" HeaderText="Người Duyệt" HeaderStyle-Width="150px" />
                                                            <asp:BoundField DataField="Status" HeaderText="Trạng Thái" HeaderStyle-Width="110px" />
                                                            <asp:BoundField DataField="NDCHT" HeaderText="Nội Dung" HeaderStyle-Width="310px" />
                                                            <asp:BoundField DataField="dates" HeaderText="Ngày Tháng" />

                                                        </Columns>
                                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>

                                            <asp:Label ID="Label22" runat="server" Text="Trưởng Phòng Dự Án:" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label26" runat="server" Text="Trưởng Phòng Kinh Doanh:" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label27" runat="server" Text="Trưởng Phòng Nhân Sự:" style="font-weight: bold;"></asp:Label>
                                            <asp:Label ID="Label28" runat="server" Text="Kế Toán Trưởng:" style="font-weight: bold;"></asp:Label>
                                            <div class="table-responsive">
                                                <asp:Panel ID="Panel3" runat="server">
                                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false"
                                                        CellPadding="4" DataKeyNames="Mahoadon"
                                                        AllowPaging="True" OnPageIndexChanging="GridView4_PageIndexChanging" ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="STT">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Tennguoiduyet" HeaderText="Người Duyệt" HeaderStyle-Width="150px" />
                                                            <asp:BoundField DataField="Status" HeaderText="Trạng Thái" HeaderStyle-Width="110px" />
                                                            <asp:BoundField DataField="NDCHT" HeaderText="Nội Dung" HeaderStyle-Width="310px" />
                                                            <asp:BoundField DataField="dates" HeaderText="Ngày Tháng" />

                                                        </Columns>
                                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>

                                            <asp:Label ID="Label23" runat="server" Text="Giám Đốc:" style="font-weight: bold;"></asp:Label>
                                            <div class="table-responsive">
                                                <asp:Panel ID="Panel4" runat="server">
                                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="false"
                                                        CellPadding="4" DataKeyNames="Mahoadon"
                                                        AllowPaging="True" OnPageIndexChanging="GridView5_PageIndexChanging"  ForeColor="#333333" GridLines="None">
                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="STT">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Tennguoiduyet" HeaderText="Người Duyệt" HeaderStyle-Width="150px" />
                                                            <asp:BoundField DataField="Status" HeaderText="Trạng Thái" HeaderStyle-Width="110px" />
                                                            <asp:BoundField DataField="NDCHT" HeaderText="Nội Dung" HeaderStyle-Width="310px" />
                                                            <asp:BoundField DataField="dates" HeaderText="Ngày Tháng" />

                                                        </Columns>
                                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label id="kpp" runat="server" class="bmd-label-floating" style="color: #0000FF; font-weight: bold;">Điền Lý Do Duyệt Lại :</label>
                                            <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
                                            <asp:Button ID="Button8" runat="server" Text="Nộp Lại Đơn" OnClick="Button8_Click" />
                                            <asp:Button ID="Button2" runat="server" Text="Duyệt Đơn" OnClick="Button2_Click" />
                                            <asp:Button ID="Button4" runat="server" Text="Duyệt Đơn" OnClick="Button4_Click" />
                                            <asp:Button ID="Button5" runat="server" Text="Duyệt Đơn" OnClick="Button5_Click" />
                                            <asp:Button ID="Button3" runat="server" Text="Hoàn Đơn" OnClick="Button3_Click" />
                                            <asp:Button ID="Button6" runat="server" Text="Hoàn Đơn" OnClick="Button6_Click" />
                                            <asp:Button ID="Button7" runat="server" Text="Hoàn Đơn" OnClick="Button7_Click" />
                                            <asp:Button ID="Button9" runat="server" Text="Hủy Đơn" OnClick="Button9_Click" />
                                            <asp:Button ID="Button10" runat="server" Text="Hủy Đơn" OnClick="Button10_Click" />
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
