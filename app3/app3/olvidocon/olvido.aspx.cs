using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app3.olvidocon
{
    public partial class olvido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool a = false;
            if (Session["user"] != null)
            {
                a = true;
            }

            if (!a)
            {
                if (Session["admin"] != null)
                {
                    Response.Redirect("indexlog.aspx");
                }
            }
            else
            {
                Response.Redirect("indexlog.aspx");          
            }
        }
    }
}