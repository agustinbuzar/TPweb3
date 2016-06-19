using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using accesoDatos;
using repositorios;

namespace TPweb3.cocinero
{
    public partial class receta : System.Web.UI.Page
    {
        bd_tp_Entities ctx_receta = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearReceta_Click(object sender, EventArgs e)
        {
            string url;
            Page.Validate();

            if (Page.IsValid)
            {
                Usuarios usuario = (Usuarios)Session["user"];
                url = "perfil.aspx";
                recetaRepositorio repoReceta = new recetaRepositorio(ctx_receta);
                Recetas nuevaReceta = new Recetas ();
                
                nuevaReceta.IdUsuario = usuario.IdUsuario;
                nuevaReceta.Nombre = txbNombre.Text;
                nuevaReceta.TiempoCoccion = Convert.ToInt32(txbTiempoCoccion.Text);
                nuevaReceta.Descripcion = txbDescripcion.Text;
                nuevaReceta.Ingredientes = txbIngresientes.Text;
                nuevaReceta.Tipo = Convert.ToByte(ddlTipoReceta.SelectedValue);

                repoReceta.crearReceta(nuevaReceta);
               

                Response.Redirect(url);

            }
            else
            {
                //mensaje de error
            }   
           
        }

    }
}