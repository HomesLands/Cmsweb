<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="TBE.Admin.ResetPass" %>

<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="./assets/css/reset.css">
    <link rel="stylesheet" href="./assets/css/supersized.css">
    <link rel="stylesheet" href="./assets/css/styles.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
</head>
<body>
    <asp:Label ID="Label2" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
    <div class="page-container">
        <h1>Reset Password</h1>
        <form id="form1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" name="username" class="username" placeholder="Nhập Email" ></asp:TextBox>       
            <br />
            <asp:Label ID="Label1" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
            <div class="error"><span>+</span></div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" OnClick="Button1_Click" Text="ResetPassword" />
        </form>
    </div>
    <!-- Javascript -->
    <script type="text/javascript" src="assets/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="assets/js/supersized.3.2.7.min.js"></script>
    <script type="text/javascript" src="assets/js/supersized-init.js"></script>
    <script type="text/javascript" src="assets/js/scripts.js"></script>
</body>
</html>
