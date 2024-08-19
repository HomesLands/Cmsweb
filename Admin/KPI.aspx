<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="KPI.aspx.cs" Inherits="Banhang.Admin.KPI" %>

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
                                <h4 class="card-title ">I) Tính kỷ luật</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm(Max 15)
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Ý thức và nhắc nhở mọi người tuân thủ nội quy, quy định, các vấn đề về ATVSLD & PCCC; đóng góp hay thực hiện các biện pháp phòng ngừa rủi ro;
                                         <br />
                                                        ý thức cao trong việc đảm bảo an toàn tài sản công ty và tính mạng con người; nhắc nhở và giúp đỡ người khác thực hiện các biện pháp đảm bảo
                                         <br />
                                                        an toàn về người và của. Nhiệt tình tiếp nhận sự phân công của cấp trên, đồng thời có những phản hồi thông tin hay đóng góp ý kiến để cải tiến.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>15</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChange="check1" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Hiểu rõ và luôn tuân thủ nội quy, quy định, các vấn đề về ATVSLĐ & PCCC, các quy trình công việc. Chấp hành nghiêm túc sự phân công của cấp trên
                                          <br />
                                                        và luôn thực hiện đúng ý đồ của cấp trên.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>14</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Chấp hành nghiêm túc các hướng dẫn sự phân công của cấp trên; tuy nhiên thỉnh thoảng có sai sót nhưng có sự tiến bộ và muốn cải thiện.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox3" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>4</p>
                                                </td>
                                                <td>
                                                    <p>Vi phạm nhỏ dưới 2 lần trong tháng và không có cố tình. Thực hiện đúng các quy trình công việc.</p>
                                                </td>
                                                <td>
                                                    <p>10</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox4" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>5</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Có những vi phạm nhỏ từ 2 lần trở lên trong tháng (cấp trên phải nhắc nhở nhiều); hoặc cố tình sai phạm mặc dù là lỗi nhỏ (nhưng chưa đến 
                                          <br />
                                                        mức xét kỷ luật văn bản)
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>7</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox5" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            </asp:RadioButtonList>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title ">II) Chuyên cần</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm(Max 20)
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Làm việc đủ ngày công trong tháng, không đi trễ về sớm, luôn chăm chỉ làm việc, sẵn sàng làm thêm giờ để hoàn tất công việc dở dang; luôn tham gia làm
                                            <br />
                                                        thêm giờ khi công việc yêu cầu.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>20</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox6" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Nghỉ không quá 1 ngày phép trong tháng, nghỉ đúng quy định của nội quy Công ty, không đi trễ về sớm, luôn chăm chỉ làm việc, sẵn sàng làm thêm giờ để hoàn
                                           <br />
                                                        tất công việc dở dang; không thường xuyên tham gia làm thêm giờ khi công việc yêu cầu (3 lần/tháng).
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>18</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox7" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Nghỉ không quá 3 ngày phép trong tháng, nghỉ đúng quy định của nội quy Công ty, không đi trễ về sớm (hoặc đi trễ về sớm dưới 15 phút/ngày và không quá
                                           <br />
                                                        3 lần/tháng);  không thường xuyên tham gia làm thêm giờ khi công việc yêu cầu (5 lần/tháng).
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>15</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox8" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>4</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Thỉnh thoảng có hiện tượng lãng công, nghỉ phép không đúng quy trình, nghỉ quá phép (hoặc có nghỉ việc riêng không hưởng lương), thỉnh thoảng đi trễ về
                                         <br />
                                                        sớm nhưng chưa đến mức kỷ luật; đi trễ về sớm dưới 15 phút/ngày và không quá 5 lần/tháng.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox9" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>5</p>
                                                </td>
                                                <td>
                                                    <p>Nghỉ không phép, thường xuyên đi trễ hoặc về sớm (xem xét kỷ luật)</p>
                                                </td>
                                                <td>
                                                    <p>7</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox10" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title ">III) Tinh thần hợp tác</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm(Max 15)
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p></p>
                                                </td>
                                                <td>
                                                    <p>Mức độ hoàn thành công việc, đánh giá từ cao xuống thấp:</p>
                                                </td>
                                                <td></td>
                                                <td></td>

                                                <td></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Sẵn sàng giúp đỡ đồng nghiệp trong và ngoài bộ phận (nhận thêm và làm đạt các nhiệm vụ phát sinh, không ngại khó; làm kiêm các nhiệm vụ của nhân viên 
                                           <br />
                                                        khác khi họ vắng mặt... thực hiện được các nhiệm vụ khó)
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>15</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox11" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>Sẵn sàng giúp đỡ đồng nghiệp trong bộ phận, sẵn sàng chia sẻ thông tin, kinh nghiệm cho đồng nghiệp.</p>
                                                </td>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox12" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>Sẵn sàng giúp đỡ đồng nghiệp trong bộ phận; ít chia sẻ thông tin, kinh nghiệm.</p>
                                                </td>
                                                <td>
                                                    <p>10</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox13" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>4</p>
                                                </td>
                                                <td>
                                                    <p>Chỉ biết lo cho chính mình, ít chia sẻ thông tin, kinh nghiệm; chỉ phối hợp khi có áp lực từ cấp trên </p>
                                                </td>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox14" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>5</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Không hợp tác, gây xung đột, không chia sẻ thông tin hoặc cố tình cung cấp thông tin sai, gây khó khăn cho công việc của người khác (nhưng chưa gây hậu
                                          <br />
                                                        quả nghiêm trọng hoặc chưa đến mức kỷ luật)
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>7</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox15" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title ">IV) Mức độ hoàn thành công việc được giao</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm(Max 25)
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p></p>
                                                </td>
                                                <td>
                                                    <p>Mức độ hoàn thành công việc, đánh giá từ cao xuống thấp:</p>
                                                </td>
                                                <td></td>
                                                <td></td>

                                                <td></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>Luôn hoàn thành công việc với chất lượng cao, kịp tiến độ. Sẵn sàng chịu trách nhiệm nhận thêm công việc khi điều động.</p>
                                                </td>
                                                <td>
                                                    <p>25</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox16" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Thường xuyên hoàn thành tốt công việc, không kịp tiến độ được giao nhưng làm việc nghiêm túc và nỗ lực để hoàn thành công việc, không nề hà 
                                         <br />
                                                        khó khăn.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>22</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox17" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Không hoàn thành công việc, không kịp tiến độ được giao dưới 3 lần trong tháng nhưng làm việc nghiêm túc và nỗ lực để hoàn thành công việc và không
                                            <br />
                                                        nề hà khó khăn.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>18</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox18" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>4</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Không hoàn thành công việc, không kịp tiến độ được giao từ 3 lần trở lên trong tháng; sai sót nhiều và không chịu sửa chữa, ngại khó và không dám nhận
                                           <br />
                                                        trách nhiệm, tuy nhiên chưa đến mức kỷ luật.
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox19" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>5</p>
                                                </td>
                                                <td>
                                                    <p>Không thực hiện nhiệm vụ khi cấp trên giao phó (xem xét kỷ luật)</p>
                                                </td>
                                                <td>
                                                    <p>7</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox20" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title ">V) Kỹ năng làm việc và giải quyết vấn đề (Điểm cộng và điểm trừ: mức điểm cao nhất bị trừ là 10 điểm)</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p></p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Điểm cộng: Khi cá nhân được khen thưởng đột xuất do có thành tích xuất sắc, vượt trội; đã được thưởng hiện kim, giấy khen, nay lại được cộng 
                                          <br />
                                                        điểm để xét thưởng cuối tháng:
                                                    </p>
                                                </td>
                                                <td></td>
                                                <td></td>

                                                <td></td>

                                            </tr>

                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>Khả năng làm việc độc lập và tinh thần chủ động trong công việc</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox21" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>Luôn gương mẫu trong thực hiện công việc </p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox22" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>Ăn mặc gọn gàng, sạch sẽ</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox23" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>4</p>
                                                </td>
                                                <td>
                                                    <p>Vệ sinh và bảo quản dụng cụ thi công luôn trong trạng thái sẳn sàng</p>
                                                </td>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox24" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>5</p>
                                                </td>
                                                <td>
                                                    <p>Thao tác nhanh gọn và chính xác, chấp hành ý kiến của lãnh đạo</p>
                                                </td>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox25" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td>
                                                    <p>6</p>
                                                </td>
                                                <td>
                                                    <p>Làm việc có trách nhiệm và chịu được sức ép công việc với cường độ cao</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox26" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td>
                                                    <p>7</p>
                                                </td>
                                                <td>
                                                    <p>Mức độ hiểu biết về công việc được giao</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox27" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>8</p>
                                                </td>
                                                <td>
                                                    <p>Hiểu biết về sản phẩm dịch vụ của công ty</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox28" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>9</p>
                                                </td>
                                                <td>
                                                    <p>Có thành tích vượt trội, mang lại lợi ích cho công ty hoặc ngăn chặn thiệt hại cho công ty</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox29" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>10</p>
                                                </td>
                                                <td>
                                                    <p>Trao đổi thông tin lương, thưởng với các nhân viên khác.</p>
                                                </td>
                                                <td>
                                                    <p>-2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox30" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>11</p>
                                                </td>
                                                <td>
                                                    <p>Không làm thêm giờ khi có yêu cầu, hoặc có biểu hiện lảng tránh việc tăng ca </p>
                                                </td>
                                                <td>
                                                    <p>-3</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox31" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>12</p>
                                                </td>
                                                <td>
                                                    <p>Không giữ gìn vệ sinh chung và vệ sinh nơi làm việc</p>
                                                </td>
                                                <td>
                                                    <p>-2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox32" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>13</p>
                                                </td>
                                                <td>
                                                    <p>Không vệ sinh dụng cụ và trang thiết bị thi công sau giờ làm việc</p>
                                                </td>
                                                <td>
                                                    <p>-3</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox33" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>14</p>
                                                </td>
                                                <td>
                                                    <p>Một lần bị kỷ luật ở mức khiển trách bằng văn bản (mức 1), không có kèm bồi thường vật chất.</p>
                                                </td>
                                                <td>
                                                    <p>-4</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox34" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>15</p>
                                                </td>
                                                <td>
                                                    <p>
                                                        Một lần bị kỷ luật ở mức khiển trách bằng văn bản (mức 1) có kèm bồi thường vật chất; hoặc 2 lần kỷ luật văn bản mức một; hoặc bị kỷ luật
                                           <br />
                                                        văn bản ở mức 2 (bị cảnh cáo,...)
                                                    </p>
                                                </td>
                                                <td>
                                                    <p>-6</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox35" runat="server" />
                                                </td>

                                                <td>
                                                    <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title ">VI) Năng lực cải tiến và sáng tạo (điểm cộng)</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>STT
                                            </th>
                                            <th>Nội Dung Đánh Giá
                                            </th>
                                            <th>Điểm(Max 25)
                                            </th>
                                            <th>Giám Sát
                                            </th>
                                            <th>Nghi Chú
                                            </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <p></p>
                                                </td>
                                                <td>
                                                    <p>Đây là tiêu chí tìm ra người xuất sắc, nếu không có nhận thêm nhiệm vụ gì và cũng không có nhiệm vụ gì khó khăn hơn bình thường thì cho 0 điểm</p>
                                                </td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <p>Luôn có sáng tạo trong lúc làm việc (có ghi nhận)</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox36" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <p>Có đề xuất các giải pháp thích hợp, hiệu quả để hoàn thành nhiệm vụ của bộ phận, hoặc của cấp trên và của các thành viên khác (có ghi nhận)</p>
                                                </td>
                                                <td>
                                                    <p>2</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox37" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>3</p>
                                                </td>
                                                <td>
                                                    <p>Tự học, nghiên cứu thêm khoá đào tạo ở bên ngoài (có giấy chứng nhận)</p>
                                                </td>
                                                <td>
                                                    <p>1</p>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox38" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
