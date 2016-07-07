using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

/// <summary>
/// User 的摘要说明
/// </summary>
public class User
{
	public User()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public string username;
    public string password;
    public bool iseq(User obj)
    {
        string username = obj.username;
        string password = obj.password;
        string str_provider = "Provider=Microsoft.Jet.OLEDB.4.0;";
        string str_source = "Data Source=C:\\Users\\Administrator\\Desktop\\w4\\data\\users.mdb";
        string str_connection = str_provider + str_source;
        string str_sql = "SELECT password FROM  [user] WHERE usersname='"+username+"'";
        OleDbConnection cnn = new OleDbConnection(str_connection);
        cnn.Open();
        OleDbCommand cmd = new OleDbCommand(str_sql, cnn);
        OleDbDataReader datar;
        datar = cmd.ExecuteReader();
        datar.Read();
        string pass= datar["password"].ToString();
        cnn.Close();
        if (password != null)
        {
            if (password.Equals(pass))
                return true;
            else return false;
        }
        else return false;
    }
}