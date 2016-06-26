using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app3
{
    public partial class Sitio1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                if (Session["user"] == null)
                {
                    SiteMapDataSource1.SiteMapProvider = "Web";
                }
                else
                {
                    SiteMapDataSource1.SiteMapProvider = "Web3";
                }
            }
            else
            {
                SiteMapDataSource1.SiteMapProvider = "Web2";
            }
        }

    }
}