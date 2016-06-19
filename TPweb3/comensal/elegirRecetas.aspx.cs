using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TPweb3.comensal
{
    public partial class elegirRecetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void cvElegirRecetas_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (cblElegirRecetas.SelectedValue != "")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnReservarEvento_Click(object sender, EventArgs e)
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
                lblServidor.Text = "Error en el servidor";
            }   
        }

        
    }
}