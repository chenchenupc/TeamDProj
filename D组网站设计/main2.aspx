<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main2.aspx.cs" Inherits="main2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; ceharset=utf-8"/>
<link rel="stylesheet" href="css/xgxt_login.css" />
    <title></title>
    <style type="text/css">
        .divItem {padding:5px;}
        .divBtns {width:130px;
                   padding:5px 10px 5px 10px;
        }
        .divInfo {width:350px;
                  padding:5px 10px 5px 10px;
                  border-left:1px solid #dadada;
                  border-right:1px solid #dadada;
                 }
        .divInfo2 {width:300px;
                   padding:5px 10px 5px 10px;
                   
        }
        .divBtns,.divInfo,.divInfo2 { float:left;
        }
        .clr {clear:both;
        }
        .txtred {color:red; font-size:12px;
        }
      
    </style>
</head>
<body style="background-image: url('pic/backg.jpg')">
    <form id="form1" runat="server">
       <div style="text-align:center">
       <div class="header_title">
	   <span class="title_con">用户界面</span>
    </div>
           </div>
        <div style="text-align:right">
        <div id="header">
            <asp:Button ID="Buttonbt" runat="server" Text="返回登录" OnClick="Buttonbt_Click" class="submit-btn"/>
            </div>
            </div>
   <div>
       
       <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" 
        ItemPlaceholderID="itemholder" DataKeyNames="b_id" InsertItemPosition="None"  >

         <LayoutTemplate>
             <div runat="server" id="itemholder"></div>
             </LayoutTemplate>

           
          <ItemTemplate>
          <div id="header">
               <div class="divItem">
                   
                   <div class="divBtns">
                       <asp:Button ID="btn_edit" runat="server" Text="查看" CommandName="edit" class="submit-btn"/>
                    </div>

                   <div class="divInfo">
                       <p>书名：<%#Eval("bname") %></p>
                       <p>作者：<%#Eval("bauthor") %></p>
                       <p>类型：<%#Eval("btp") %></p>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="enable" runat="server" Checked='<%#Eval("benable") %>' Enabled="false" Text="是否可借"/>
                       
                       <p>数量：<%#Eval("bnum") %></p>
                   </div>
                   
                   <div class="clr"></div>
                   </div>
              </div>
              </div>
           </ItemTemplate>

           <InsertItemTemplate >
               <div class="divItem" style="border:1px solid blue">
                   <div class="divBtns">
                       <asp:Button ID="btn_insert" runat="server" Text="插入" CommandName="Insert" ValidationGroup="v_insert" />
                       <br></br>
                       <asp:Button ID="btn_calcel" runat="server" Text="取消" CommandName="Cancel"  />
                   </div>

                   <div class="divInfo">
                       书名：<asp:TextBox ID="txt_i_name" runat="server" Text='<% #Eval("bname") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_name" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       作者：<asp:TextBox ID="txt_i_author" runat="server" Text='<%#Eval("bauthor") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_author" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br></br>
                       类型：<asp:TextBox ID="txt_i_type" runat="server" Text='<%#Eval("btp") %>'/>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="txtred" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="txt_i_type" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                       <br>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="i_enable" runat="server" Checked='<%#Eval("benable") %>' Text="是否可借"/>
                       <br></br>
                       数量：<asp:TextBox ID="i_num" runat="server" Text='<%#Eval("bnum") %>'/>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                           runat="server" ValidationExpression="^[1-9]\d*$" CssClass="txtred" ErrorMessage="输入数字" 
                           ControlToValidate="i_num" Display="Dynamic" ValidationGroup="v_insert">
                       </asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="必填字段" 
                           ControlToValidate="i_num" Display="Dynamic" CssClass="txtred" ValidationGroup="v_insert">
                       </asp:RequiredFieldValidator>
                   </div>

                   <div class="clr"></div>
                   </div>
           </InsertItemTemplate>


           <EditItemTemplate>
               <div class="divItem" style="border:1px solid blue">
                   <div class="divBtns">
                       
                       <asp:Button ID="btn_calcel" runat="server" Text="取消" CommandName="Cancel"  class="submit-btn"/>
                   </div>

                   <div class="divInfo">
                       书名：<asp:Label ID="Label1" runat="server" Text='<%#Eval("bname") %>'/>
                       <br></br>
                       
                       作者：<asp:Label ID="Label2" runat="server" Text='<%#Eval("bauthor") %>'/>
                       
                       <br></br>
                       类型：<asp:Label ID="Label3" runat="server" Text='<%#Eval("btp") %>'/>
                       
                       <br>
                       <asp:Label  ID="txt_e_id" runat="server" Visible="false"  Text='<%#Eval("b_id") %>'/>
                   </div>

                   <div class="divInfo2">
                       <asp:CheckBox ID="e_enable" runat="server" Checked='<%#Eval("benable") %>' Text="是否可借"/>
                       <br></br>
                       数量：<asp:Label ID="Label4" runat="server" Text='<%#Eval("bnum") %>'/>
                       <br></br>
                       出版社：<asp:Label ID="Label5" runat="server" Text='<%#Eval("bpress") %>'/>
                       <br></br>
                       ID：<asp:Label ID="Label6" runat="server" Text='<%#Eval("b_id") %>'/>
                       <br></br>
                       
                       <asp:Image ID="Image1" runat="server" Height="87px" Width="118px" ImageUrl="~/pic/图2.jpg" />
                       </div>

                   <div class="clr"></div>
                   </div>
           </EditItemTemplate>
           
        </asp:ListView>



       <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/data/text.mdb" 
           SelectCommand="SELECT * FROM [bookinfo]">
           
       </asp:AccessDataSource>

       </div>
    </form>
</body>
</html>

