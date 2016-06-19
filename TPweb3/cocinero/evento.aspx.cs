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
    public partial class evento : System.Web.UI.Page
    {
        bd_tp_Entities ctx_evento = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            recetaRepositorio repoReceta = new recetaRepositorio(ctx_evento);
            List<Recetas> listaRecetas = repoReceta.listarRecetas();
            cblRecetas.DataTextField = "Nombre";
            cblRecetas.DataValueField = "IdReceta";
            cblRecetas.DataSource = listaRecetas;
            cblRecetas.DataBind();

        }

        protected void btnCrearEvento_Click(object sender, EventArgs e)
        {       
            Page.Validate();
            if (Page.IsValid)
            {
                eventoRepositorio repoEvento = new eventoRepositorio(ctx_evento);
                Eventos nuevoEvento = new Eventos();
                
                Usuarios datosUsuario = (Usuarios)Session["user"];

                nuevoEvento.IdUsuario = datosUsuario.IdUsuario;
                nuevoEvento.Nombre = txbNombre.Text;
                nuevoEvento.Fecha = Convert.ToDateTime(txbFecha.Text);
                nuevoEvento.Descripcion = txbDescrip.Text;
                nuevoEvento.CantidadComensales = Convert.ToInt32(txbCantComensales.Text);
                nuevoEvento.Ubicacion = TxbDireccion.Text;
                nuevoEvento.NombreFoto = FileUpload1.FileName;
                nuevoEvento.Precio = Convert.ToInt32(txtPrecio.Text);
                nuevoEvento.Estado = 1;

                nuevoEvento.Recetas.Clear();
                
                foreach (ListItem id_receta in cblRecetas.Items)
                {
                    Recetas receta_asig = repoEvento.idReceta(Convert.ToInt32(id_receta.Value));
                    nuevoEvento.Recetas.Add(receta_asig);
                    receta_asig.Eventos.Add(nuevoEvento);
                }
                repoEvento.crearEvento(nuevoEvento);
                repoEvento.save();

                Response.Redirect("perfil.aspx");

            }
            else
            {
                Response.Redirect("pelotudo.aspx");
            }
        }

         /*protected void cvmodulelist_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (cblRecetas.SelectedValue != "")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }*/

    }
}