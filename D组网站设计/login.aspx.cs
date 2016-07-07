using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        User obj = new User();
        obj.username = TextBox1.Text;
        obj.password = TextBox2.Text;
        if (obj.iseq(obj))
        {
            Response.Redirect("main.aspx");
        }
      
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        User obj = new User();
        obj.username = TextBox1.Text;
        obj.password = TextBox2.Text;
        if (obj.iseq(obj))
        {
            Response.Redirect("main2.aspx");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (sender != null)
        {
            TextBox1.Text = null;
            TextBox2.Text = null;

        }
    }
}