using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPweb3.clases;


namespace TPweb3.comensal
{
    public partial class elegirRecetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((string)Session["user"] != "comensal")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
            
            List<Receta> recetas = new List<Receta>();
            
            Receta recetita = new Receta();
            recetita.Nombre = "arroz con pollo";
            recetas.Add(recetita);

            recetita.Nombre = "Polenta";
            recetas.Add(recetita);

            cblElegirRecetas.DataSource = recetas;
            cblElegirRecetas.DataBind();
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