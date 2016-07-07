using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Forget obj = new Forget();
        obj.username = tb1.Text;
        obj.password = tb2.Text;

        obj.iseql(obj);
        
    }
    
}