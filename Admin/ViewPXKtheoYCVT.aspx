<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPXKtheoYCVT.aspx.cs" Inherits="TBE.Admin.ViewPXKtheoYCVT" %>

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
        <asp:Label ID="Label5" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label16" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label17" runat="server" Text="0"></asp:Label>
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
                                <asp:Label ID="Label3" runat="server" Text="Label" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive" style="overflow-x: hidden;">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <asp:Label ID="tencongty" runat="server" class="bmd-label-floating" Style="font-weight: bold; font-size: 18px; color: #000000;"></asp:Label><br />
                                                <asp:Label ID="diachi" runat="server" class="bmd-label-floating" Style="font-weight: bold; font-size: 12px; color: #000000;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="font-weight: bold; font-size: 24px; color: #000000;">Phiếu Xuất Kho</label><br />
                                                <asp:Label ID="Date" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="font-weight: bold; color: #000000;">Mẫu số: 02 - VT</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000;">Số Phiếu:</label>
                                                <asp:Label ID="sophieu" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000;">Mã Số YCVT:</label>
                                                <asp:Label ID="Soycvt" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000;">&emsp;(Ban hành theo QĐ số: 48/2006/QĐ/BTC</label>
                                                <br />
                                                <label class="bmd-label-floating" style="color: #000000;">&emsp;&emsp;ngày 14/9/2016 của Bộ trưởng BTC)</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; margin-left: 4.8em; font-size: 12px;">Xuất cho công trình:</label>
                                                &emsp;&emsp;&emsp;
                                            <asp:Label ID="xuatcongtrinh" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; margin-left: 4.8em; font-size: 12px;">Người nhận:</label>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            <asp:Label ID="nguoinhan" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000; text-indent: 0; margin-left: 4.8em; font-size: 12px;">Xuất tại kho:</label>
                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                             <asp:Label ID="xuattai" runat="server" class="bmd-label-floating" Style="color: #000000; font-weight: bold;"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Panel ID="pnlContents" runat="server">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <HeaderTemplate>
                                                <table class="table" border="1">
                                                    <tr>
                                                        <th style="align-content: center;">STT</th>
                                                        <th style="align-content: center;">Mã hàng</th>
                                                        <th style="align-content: center;">Mô tả chi tiết vật tư</th>
                                                        <th style="align-content: center;">Hãng Sản Xuất</th>
                                                        <th style="align-content: center;">Đơn vị</th>
                                                        <th style="align-content: center;">Số lượng</th>
                                                        <th style="width: 100px; align-content: center;">Ghi chú</th>
                                                    </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label9" runat="server"><%#Container.ItemIndex+1 %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label15" runat="server"><%# Eval("Masp") %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label4" runat="server"><%# Eval("Tensp") %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="tenid" runat="server"><%# Eval("Hangsanxuat") %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label6" runat="server"><%# Eval("Donvi") %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label1" runat="server"><%# Eval("SLXuat") %></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label2" runat="server"><%# Eval("Ghichu") %></asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </asp:Panel>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating" style="color: #000000;">Tổng số tiền bằng chữ:</label><br />
                                                <asp:Label ID="Label20" runat="server" class="bmd-label-floating" Style="color: #000000;"></asp:Label>
                                                <label class="bmd-label-floating" style="color: #000000;">Số chứng từ kèm theo:</label>
                                                <asp:Label ID="Label13" runat="server" class="bmd-label-floating" Style="color: #000000;">abc</asp:Label>
                                            </div>
                                        </div>
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
                                                            <asp:Image ID="Image5" runat="server" Height="120px" ImageUrl='<%# Eval("CKNguoilapphieu") %>' Width="183px" /><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;"><%# Eval("Nguoilapphieu") %></label><br />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">&emsp;Người Giao Hàng</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">&emsp;Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image6" runat="server" Height="120px" ImageUrl='<%# Eval("CkNguoiGiaohang") %>' Width="160px" />
                                                            <br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;"><%# Eval("Nguoigiaohanh") %></label><br />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">Người Nhận Hàng</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl='<%# Eval("CKNguoinhan") %>' Width="160px" />
                                                            <br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;"><%# Eval("Nguoinhan") %></label><br />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;">Thủ Kho</label><br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-style: italic;">Ký, họ tên</label>
                                                            <br />
                                                            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("CkThukho") %>' Width="160px" />
                                                            <br />
                                                            <label class="bmd-label-floating" style="color: #000000; font-weight: bold;"><%# Eval("Thukho") %></label><br />
                                                        </div>
                                                    </div>
                                                </div>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <asp:Label runat="server" ID="spe" class="bmd-label-floating">Người Giao Hàng :</asp:Label>
                                                <asp:DropDownList ID="themngh" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="themngh_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <asp:Label runat="server" ID="tenhj" class="bmd-label-floating">Ảnh Chụp Xác Nhận Gửi Hàng </asp:Label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                        </div>
                                        <div class="col-md-5">
                                            <asp:Image ID="Image1" runat="server" Width="150px" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <asp:Button ID="danggiao" runat="server" class="btn btn-primary pull-left" OnClick="danggiao_Click" Text="Thêm Người Giao Hàng" />
                                        <asp:Button ID="dagiao" runat="server" class="btn btn-primary pull-left" OnClick="dagiao_Click" Text="Giao Thành Công" />
                                        <asp:Button ID="giaothatbai" runat="server" class="btn btn-primary pull-left" OnClick="giaothatbai_Click" Text="Giao Thất Bại" />
                                        <asp:Button ID="giaolai" runat="server" class="btn btn-primary pull-left" Text="Giao Lại" OnClick="giaolai_Click" />                                     
                                        <asp:Label ID="anhgiaohang" runat="server" Text="ghhf"></asp:Label>
                                        <asp:Button ID="anhgh" runat="server" class="btn btn-primary pull-left" OnClick="anhgh_Click" Text="Xem Ảnh Giao Hàng" />
                                        <asp:Button ID="ananhgiaohang" runat="server" class="btn btn-primary pull-left" OnClick="ananhgiaohang_Click" Text="Tắt Ảnh" />
                                    </div>                                 
                                </div>
                            </div><asp:Image ID="Image2" runat="server" Width="350px" />
                        </div>
                    </div>                     
                </div>
            </div>
        </div>
    </form>
</asp:Content>
