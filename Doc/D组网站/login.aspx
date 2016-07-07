<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/xgxt_login.css" />
    <title></title>
</head>
<body style="background-image: url('pic/backg.jpg');"> 
    <form id="form1" runat="server">  
           <div id="header">
	<div class="header_title">
		<span class="title_con">石大二手物品流转平台</span>
	</div>
</div>
<div id="content">
<center>
		<div class="con">
		<div class="con_title">
            <span class="con_title_sp">欢迎使用登录平台</span>
		</div>
            <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="用户名"   ></asp:Label>
        ：<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 20px"></asp:TextBox>
            <br />
            <br />
        
        &nbsp;<asp:Label ID="Label2" runat="server" Text="密码" font-family="微软雅黑"  ></asp:Label>
            :&nbsp;<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 9px"></asp:TextBox>
        <br><br/>
            <asp:Button ID="Button4" runat="server"  Text="管理员登录" OnClick="Button4_Click" class="submit-btn" />&nbsp;
        <asp:Button ID="Button6" runat="server"  Text="用户登录" OnClick="Button6_Click" class="submit-btn" />
            &nbsp;<asp:Button ID="Button5" runat="server" Text="重置" OnClick="Button5_Click" class="submit-btn"/>
            <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx" class="title_con" ForeColor="Red">注册新用户</asp:HyperLink>
&nbsp;&nbsp;/&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forget.aspx" ForeColor="Red">忘记密码</asp:HyperLink>
    </div>
    </center>
    </div>
    
    </form>
</body>
</html>

