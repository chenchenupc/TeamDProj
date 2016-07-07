<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/xgxt_login.css" />
<style type="text/css">

        table.TableBorder

        {

         border-collapse: collapse;

            border:solid 1px #93c2f1;

            width:98%;

            font-size:10pt;

        }

        table.TableBorder td,th

        {

         border-collapse:collapse;

         border:solid 1px #93c2f1;

            font-size:10pt;

        }

    .style1
    {
        font-family: 微软雅黑;
        font-size:1em;
    }

    </style>


    <title></title>
</head>
<body style="background-image: url('pic/backg.jpg')">
    <form id="form1" runat="server">
     <div id="header" style="text-align:center">
	<div class="header_title">
		<span class="title_con">石大二手物品流转平台</span>
	</div>
</div>
    <div style="text-align:center">
        <br />
        <span class="style1" >类型查询</span>：<asp:DropDownList 
            ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" 
            DataTextField="btype" DataValueField="bid" BackColor="White">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/data/text.mdb" SelectCommand="SELECT [bid], [btype] FROM [bclass]"></asp:AccessDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" class="submit-btn"/>
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="返回" class="submit-btn" OnClick="Button2_Click" />
        <br />
        <br />
        <div style="text-align:center">
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bname" DataSourceID="AccessDataSource2" CellPadding="3" GridLines="None" ItemStyle HorizontalAlign="Center" 
                CssClass="TableBorder" BorderColor="White" BorderStyle="Ridge" BackColor="White" BorderWidth="2px" CellSpacing="1"  >
            <Columns>
                <asp:BoundField DataField="bname" HeaderText="bname" ReadOnly="True" SortExpression="bname" />
                <asp:BoundField DataField="bauthor" HeaderText="bauthor" SortExpression="bauthor" />
                <asp:BoundField DataField="bpress" HeaderText="bpress" SortExpression="bpress" />
                <asp:BoundField DataField="bnum" HeaderText="bnum" SortExpression="bnum" />
                <asp:CheckBoxField DataField="benable" HeaderText="benable" SortExpression="benable" />
                <asp:BoundField DataField="btp" HeaderText="btp" SortExpression="btp" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        </div>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/data/text.mdb" SelectCommand="SELECT [bname], [bauthor], [bpress], [bnum], [benable], [btp] FROM [bookinfo] WHERE ([btpid] = ?)" DeleteCommand="DELETE FROM [bookinfo] WHERE [bname] = ?" InsertCommand="INSERT INTO [bookinfo] ([bname], [bauthor], [bpress], [bnum], [benable], [btp]) VALUES (?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [bookinfo] SET [bauthor] = ?, [bpress] = ?, [bnum] = ?, [benable] = ?, [btp] = ? WHERE [bname] = ?">
            <DeleteParameters>
                <asp:Parameter Name="bname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bname" Type="String" />
                <asp:Parameter Name="bauthor" Type="String" />
                <asp:Parameter Name="bpress" Type="String" />
                <asp:Parameter Name="bnum" Type="Int32" />
                <asp:Parameter Name="benable" Type="Boolean" />
                <asp:Parameter Name="btp" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="btpid" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="bauthor" Type="String" />
                <asp:Parameter Name="bpress" Type="String" />
                <asp:Parameter Name="bnum" Type="Int32" />
                <asp:Parameter Name="benable" Type="Boolean" />
                <asp:Parameter Name="btp" Type="String" />
                <asp:Parameter Name="bname" Type="String" />
            </UpdateParameters>
            
        </asp:AccessDataSource>
        <br />
    </div>
    </form>
</body>
</html>
