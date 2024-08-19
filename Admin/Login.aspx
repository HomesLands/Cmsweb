<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Admins.WebForm9" %>

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

    <div class="page-container">
        <h1>Login</h1>
        <form id="form1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" name="username" class="username" placeholder="Username" pattern="[a-zA-Z0-9]{1,15}"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" class="password" placeholder="Password" TextMode="Password" pattern="[a-zA-Z0-9]{1,15}"></asp:TextBox>  <br /> <br />   
            <asp:LinkButton runat="server" id="quenpass" Style="color: #ffffff; text-decoration: none;" OnClick="quenpass_Click">Quên Password</asp:LinkButton>
            <br />
            <asp:Label ID="Label1" runat="server" Style="color: #FF0000; font-style: italic" class="bmd-label-floating"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" ></asp:Label>                      
            <div class="error"><span>+</span></div>                 
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" OnClick="Button1_Click1" Text="Login" />     
            <asp:Label ID="Label3" runat="server" class="bmd-label-floating"></asp:Label>
        </form>
    </div>
    <!-- Javascript -->
    <script type="text/javascript" src="assets/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="assets/js/supersized.3.2.7.min.js"></script>
    <script type="text/javascript" src="assets/js/supersized-init.js"></script>
    <script type="text/javascript" src="assets/js/scripts.js"></script>
</body>
</html>
