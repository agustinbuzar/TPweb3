using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPweb3.cocinero
{
    public partial class evento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearEvento_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                Response.Redirect("perfil.aspx");

            }
            else
            {

            }
        }

        protected void cvmodulelist_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (cblRecetas.SelectedValue != "")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

    }
}