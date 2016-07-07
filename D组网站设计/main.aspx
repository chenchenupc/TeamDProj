<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; ceharset=utf-8"/>
<link rel="stylesheet" href="css/xgxt_login.css" />
    <title></title>
    <style type="text/css">
        .divItem {padding:5px;}
        .divBtns {width:130px;}
        .divInfo {width:350px;
                  padding:0px 10px 0px 10px;
                  border-left:1px solid #dadada;
                  border-right:1px solid #dadada;
                  
        }
        .divInfo2 {width:300px;
        }
        .divBtns,.divInfo,.divInfo2 { float:left;
        }
        .clr {clear:both;
        }
        .txtred {color:red; font-size:12px;
        }
      
    </style>
</head>
<body style= "background-image: url('pic/backg.jpg');">
    <form id="form1" runat="server">
       <div style="text-align:center">
           <span class="title_con">管理员系统</span>
            <div style="text-align:right;">
            <div id="header">
            <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" class="submit-btn"/>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="返回登录" OnClick="Button1_Click" class="submit-btn"/>
            </div>
           </div>
           </div>
   <div>
       <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" 
        ItemPlaceholderID="itemholder" DataKeyNames="b_id" InsertItemPosition="FirstItem">

         <LayoutTemplate>
             <div runat="server" id="itemholder"></div>
             </LayoutTemplate>

           
          <ItemTemplate>
          <div id="header">
               <div class="divItem">
                   
                   <div class="divBtns">
                       <asp:Button ID="btn_edit" runat="server" Text="编辑" CommandName="edit" class="submit-btn"/>
                       <br></br>
                       <asp:Button ID="btn_delete" runat="server" Text="删除" CommandName="Delete"  class="submit-btn" OnClientClick="return confirm('是否删除？')" />
                   </div>

                   <div class="divInfo">
                       <p>书名：<%#Eval("bname") %></p>
                       <p>作者：<%#Eval("bauthor") %></p>
                       <p>类型：<%#Eval("btp") %></p>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="enable" runat="server" Checked='<%#Eval("benable") %>' Enabled="false" Text="是否可借"/>
                       <p>数量：<%#Eval("bnum") %></p>
                       <p>出版社：<%#Eval("bpress") %></p>
                   </div>

                   <div class="clr"></div>
                   </div>
              </div>
              </div>
           </ItemTemplate>

           <InsertItemTemplate >
               <div class="divItem" style="border:1px solid blue">
                   <div class="divBtns">
                       <asp:Button ID="btn_insert" runat="server" Text="插入" CommandName="Insert" ValidationGroup="v_insert" class="submit-btn"/>
                       <br></br>
                       <asp:Button ID="btn_calcel" runat="server" Text="取消" CommandName="Cancel" class="submit-btn" />
                   </div>

                   <div class="divInfo">
                       书名：<asp:TextBox ID="txt_i_name" runat="server" Text='<% #Bind("bname") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_name" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       作者：<asp:TextBox ID="txt_i_author" runat="server" Text='<%#Bind("bauthor") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_author" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       类型：<asp:TextBox ID="txt_i_type" runat="server" Text='<%#Bind("btp") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_type" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       类型id：<asp:TextBox ID="txt_i_tpid" runat="server" Text='<%#Bind("btpid") %>'/>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1212" 
                           runat="server" ValidationExpression="^[1-9]\d*$" CssClass="txtred" ErrorMessage="输入数字" 
                           ControlToValidate="txt_i_tpid" Display="Dynamic" ValidationGroup="v_insert">
                       </asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_tpid" Display="Dynamic" CssClass="txtred" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="i_enable" runat="server" Checked='<%#Bind("benable") %>' Text="是否可借"/>
                       <br></br>
                       数量：<asp:TextBox ID="i_num" runat="server" Text='<%#Bind("bnum") %>'/>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                           runat="server" ValidationExpression="^[1-9]\d*$" CssClass="txtred" ErrorMessage="输入数字" 
                           ControlToValidate="i_num" Display="Dynamic" ValidationGroup="v_insert">
                       </asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="i_num" Display="Dynamic" CssClass="txtred" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>

                       <br></br>
                       出版社：<asp:TextBox ID="i_press" runat="server" Text='<%#Bind("bpress") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="i_press" Display="Dynamic" CssClass="txtred" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                   </div>

                   <div class="clr"></div>
                   </div>
           </InsertItemTemplate>


           <EditItemTemplate>
               <div class="divItem" style="border:1px solid blue">
                   <div class="divBtns">
                       <asp:Button ID="btn_update" runat="server" Text="保存"  class="submit-btn" CommandName="Update" ValidationGroup="v_edit" />
                       <br></br>
                       <asp:Button ID="btn_calcel" runat="server" Text="取消" CommandName="Cancel" class="submit-btn" />
                   </div>

                   <div class="divInfo">
                       书名：<asp:TextBox ID="txt_e_name" runat="server"    Text='<% #Bind("bname") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_e_name" ValidationGroup="v_edit">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       作者：<asp:TextBox ID="txt_e_author" runat="server"  Text='<%#Bind("bauthor") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_e_author" ValidationGroup="v_edit">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       类型：<asp:TextBox ID="txt_e_type" runat="server"  Text='<%#Bind("btp") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_e_type" ValidationGroup="v_edit">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       类型id：<asp:TextBox ID="txt_e_tpid" runat="server" Text='<%#Bind("btpid") %>'/>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1212" 
                           runat="server" ValidationExpression="^[1-9]\d*$" CssClass="txtred" ErrorMessage="输入数字" 
                           ControlToValidate="txt_e_tpid" Display="Dynamic" ValidationGroup="v_edit">
                       </asp:RegularExpressionValidator>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="e_enable" runat="server" Checked='<%#Bind("benable") %>' Text="是否可借"/>
                       <br></br>
                       数量：<asp:TextBox ID="e_num" runat="server" Text='<%#Bind("bnum") %>'/>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator9" 
                           runat="server" ValidationExpression="^[1-9]\d*$" CssClass="txtred" ErrorMessage="输入数字" 
                           ControlToValidate="e_num" Display="Dynamic" ValidationGroup="v_edit">
                       </asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="e_num" Display="Dynamic" CssClass="txtred" ValidationGroup="v_edit">
                       </asp:RequiredFieldValidator>
                        <br></br>
                       出版社：<asp:TextBox ID="e_press" runat="server" Text='<%#Bind("bpress") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="e_press" Display="Dynamic" CssClass="txtred" ValidationGroup="v_edit">
                       </asp:RequiredFieldValidator>

                   </div>

                   <div class="clr"></div>
                   </div>
           </EditItemTemplate>
           
        </asp:ListView>



       <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/data/text.mdb" 
           DeleteCommand="DELETE FROM [bookinfo] WHERE [b_id] = ?" 
           InsertCommand="INSERT INTO [bookinfo] ([bname], [btp], [bauthor], [bpress], [bnum], [benable],[btpid]) VALUES (?, ?, ?, ?, ?, ?,?)" 
           SelectCommand="SELECT * FROM [bookinfo]" 
           UpdateCommand="UPDATE [bookinfo] SET [btp] = ?, [bauthor] = ?, [bpress] = ?, [bnum] = ?, [benable] = ?, [bname] = ? ,[btpid]= ? WHERE [b_id] = ?">
           
           <DeleteParameters>
               <asp:Parameter Name="b_id" Type="Int32" />
           </DeleteParameters>

           <InsertParameters>
               <asp:Parameter Name="bname" Type="String" />
               <asp:Parameter Name="btp" Type="String" />
               <asp:Parameter Name="bauthor" Type="String" />
               <asp:Parameter Name="bpress" Type="String" />
               <asp:Parameter Name="bnum" Type="Int32" />
               <asp:Parameter Name="benable" Type="Boolean" />
               <asp:Parameter Name="btpid" Type="Int32" />
               
           </InsertParameters>

           <UpdateParameters>
               <asp:Parameter Name="btp" Type="String" />
               <asp:Parameter Name="bauthor" Type="String" />
               <asp:Parameter Name="bpress" Type="String" />
               <asp:Parameter Name="bnum" Type="Int32" />
               <asp:Parameter Name="benable" Type="Boolean" />
               <asp:Parameter Name="b_id" Type="Int32" />
               <asp:Parameter Name="bname" Type="String" />
               <asp:Parameter Name="btpid" Type="Int32" />
           </UpdateParameters>

       </asp:AccessDataSource>

       </div>
    </form>
</body>
</html>
