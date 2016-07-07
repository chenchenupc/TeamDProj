using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

/// <summary>
/// User 的摘要说明
/// </summary>
public class Register
{
    public Register()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public string username;
    public string password;
    public bool isequal(Register obj)
    {
         string username = obj.username;
         string password = obj.password;
        
        
        if (username!= null)
        {
            if (password != null)
                return true;
            else return false;
        }
        else return false;
    }
}