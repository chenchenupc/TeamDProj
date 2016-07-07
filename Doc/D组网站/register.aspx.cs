using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btni1_Click(object sender, EventArgs e)
    {
        Register obj = new Register();
        string username = tb1.Text;
        string password = tb2.Text;
        obj.username = username;
        obj.password = password;
        if (obj.isequal(obj))
        {
            string str_provider1 = "Provider=Microsoft.Jet.OLEDB.4.0;";
            string str_source1 = "Data Source=C:\\Users\\Administrator\\Desktop\\w4\\data\\users.mdb";
            string str_connection = str_provider1 + str_source1;
            string str_sql1 = "INSERT  INTO  [user]([usersname],[password]) VALUES( '" + username + "','" + password + "')";
            OleDbConnection cnn1 = new OleDbConnection(str_connection);
            cnn1.Open();
            OleDbCommand cmd1 = new OleDbCommand(str_sql1, cnn1);
            cmd1.ExecuteNonQuery();
            cnn1.Close();

            Response.Redirect("login.aspx");
            
        }
    }
}