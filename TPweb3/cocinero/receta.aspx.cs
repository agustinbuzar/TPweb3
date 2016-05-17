using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPweb3.cocinero
{
    public partial class receta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != "cocinero")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }

        protected void btnCrearReceta_Click(object sender, EventArgs e)
        {
            string url;
            Page.Validate();

            if (Page.IsValid)
            {
                url = "perfil.aspx";
                Response.Redirect(url);
            }
            else
            {
                //mensaje de error
            }   
           
        }

    }
}