using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;


/// <summary>
/// change 的摘要说明
/// </summary>
public class Change
{
	public Change()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public int num;
    public string username;
    public int bid;

    public void minus(Change obj,int ididid)
    {
        
        string username = obj.username;
        string str_provider = "Provider=Microsoft.Jet.OLEDB.4.0;";
        string str_source = "Data Source=C:\\Users\\Administrator\\Desktop\\w4\\data\\text.mdb";
        string str_connection = str_provider + str_source;
        string str_sql = "UPDATE bookinfo set bnum = bnum-1  WHERE b_id='" + ididid + "'";
        OleDbConnection cnn = new OleDbConnection(str_connection);
        cnn.Open();
        OleDbCommand cmd = new OleDbCommand(str_sql, cnn);
        cmd.ExecuteNonQuery();
        cnn.Close();
    }

    public int find(Change obj) 
    {
        
        string str_provider = "Provider=Microsoft.Jet.OLEDB.4.0;";
        string str_source = "Data Source=E:\\VS2012\\File\\w4\\data\\text.mdb";
        string str_connection = str_provider + str_source;
        int idid = obj.bid;
        return idid;
    }
       
}