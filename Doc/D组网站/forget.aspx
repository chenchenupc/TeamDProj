<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/xgxt_login.css" />
    <title></title>
</head>
<body style=" background-image: url('pic/backg.jpg');">
    <form id="form1" runat="server">
      <div id="header">
	<div class="header_title">
		<span class="title_con">石大二手物品流转平台</span>
	</div>
</div>
    <div style="text-align:center">
     <div style="text-align:center;display:inline"> 
     <center>
        <div class="con">
        <div class="con_title">
            <span class="con_title_sp">用户找回密码</span>
		</div>
       
            <br />
       
        <asp:Label ID="lb2" runat="server" Text="用户名："></asp:Label>
        <asp:TextBox ID="tb1" runat="server" style="margin-left: 13px"></asp:TextBox>
            <br />
        <br />
        &nbsp;
        <asp:Label ID="lb3" runat="server" Text="新密码："></asp:Label>
        <asp:TextBox ID="tb2" runat="server" style="margin-left: 0px"></asp:TextBox>
        <br />
            <br />
        

        <asp:Button ID="btni1" runat="server"  Text="确定" class="submit-btn" />
        &nbsp;&nbsp;
        
        <asp:Button ID="btni3" runat="server" Text="取消" class="submit-btn"  />
            <br />
        <br />
        
        <asp:HyperLink ID="hpl2" runat="server" NavigateUrl="~/login.aspx">返回登录</asp:HyperLink>
        </div>
        </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
