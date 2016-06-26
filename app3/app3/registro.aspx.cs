using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] == null)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Redirect("indexlog.aspx");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}