using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPweb3
{
    public partial class Cocinero : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != "cocinero")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }

        }
    }
}