using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPweb3.comensal
{
    public partial class calificarEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((string)Session["user"] != "comensal")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }

        }

        protected void btnCalificarEvento_Click(object sender, EventArgs e)
        {
            Page.Validate();
            string url;

            if (Page.IsValid)
            {
                url = "perfil.aspx";
                Response.Redirect(url);
            }
            else
            {
                lblErrorServidor.Text = "Error del servidor";
            }
        }
    }
}