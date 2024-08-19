<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Banhang.Admin.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="frm" runat="server">

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
                                    <asp:Label ID="countnoti" runat="server" Text="10"></asp:Label></span>
                                <p class="d-lg-none d-md-block">
                                    Some Actions
                 
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <div style="width:400px;">
                                    <asp:ListView ID="ListView2" runat="server" GroupPlaceholderID="groupPlaceHolder2" ItemPlaceholderID="itemPlaceHolder2">
                                        <LayoutTemplate>
                                            <table class="table" border="0">
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder2"></asp:PlaceHolder>
                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder2"></asp:PlaceHolder>
                                            </tr>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="Bạn Có YCVT Số: "></asp:Label>
                                                <asp:LinkButton ID="lnkCustomize" CommandArgument='<%# Eval("Mahoadon") %>' runat="server" OnCommand="lnkCustomize_Command">
                                                <asp:Label ID="Label14" runat="server"><%# Eval("Mahoadon") %></asp:Label></asp:LinkButton>
                                                <asp:Label ID="Label9" runat="server" Text="Cần Duyệt!"></asp:Label>
                                            </td>
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
                            <h4 class="card-title">Version CRM</h4>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        Ngày 08/6/2022
                                          <p style="font-weight: bold;"> * Version 1.0.08.6</p> 
                                           - Thêm tính năng thêm vật tư nhập from
                                          <br/> - Fix lỗi dấu tiếng việt ở những trang bug lỗi
                                           <br/>- Fix Regex Validation
                                           <br/>- Thêm xóa phân quyền duyệt                                          
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        Ngày 09/6/2022
                                            <p style="font-weight: bold;"> * Version 1.0.09.6</p>
                                           - Fix Upload file Excel đơn YCVT
                                          <br/> - Fix Regex Validation
                                          <br/> - Fix lỗi mã tạo đơn (bị nhảy theo thời gian thực)(mã lỗi T012)
                                          <br/> - Xây dựng lại mục tạo mã đơn fix lỗi mã lỗi T012.
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        Ngày 10/6/2022
                                        <p style="font-weight: bold;">* Version 1.0.10.6</p> 
                                           - Thêm phân hệ xóa Đơn,sản phẩm trong đơn
                                         <br/> - Cập nhật tính năng thêm đơn sẽ xổ thêm from add vật tư
                                        <br/> - Thêm chứng chỉ bảo mật Website SSL 
                                          <br/>- Tiến hành kiểm thử chạy phân quyền
                                          <br/> - Fix Regex Validation
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                        Ngày 11/6/2022
                                         <p style="font-weight: bold;">* Version 1.0.11.6</p>
                                           - Thêm phân hệ delete Đơn,sản phẩm trong đơn
                                           <br/>- Fix lỗi Delete Đơn YCVT 
                                           <br/>- Thêm file log version 
                                    </div>
                                </div>

                                 <div class="col-md-12">
                                    <div class="form-group">
                                        Ngày 13/6/2022
                                         <p style="font-weight: bold;">* Version 1.0.13.6</p>
                                           - Nâng cấp tính nâng xóa đơn sẽ xóa sp kèm theo đơn


                                    </div>
                                </div>
                            </div>
                           
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </form>
</asp:Content>
