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
    public partial class perfil : System.Web.UI.Page
    {
        bd_tp_Entities ctx_receta = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

            eventoRepositorio repoEventos = new eventoRepositorio(ctx_receta);
            List<Eventos> listaEventos = repoEventos.listarEventos();
            grillaEventos.DataSource = listaEventos;
            grillaEventos.DataBind();

            recetaRepositorio repoReceta = new recetaRepositorio(ctx_receta);
            List<Recetas> listaRecetas = repoReceta.listarRecetas();
            grillaRecetas.DataSource = listaRecetas;
            grillaRecetas.DataBind();

            Usuarios datosUsuario = (Usuarios)Session["user"];
            lblNombre.Text = datosUsuario.Nombre;
            lblEmail.Text = datosUsuario.Email;
            lblFechaIni.Text = datosUsuario.FechaRegistracion.ToString();
            lblCantRecetas.Text = Convert.ToString(listaRecetas.Count());
               
        }

        public void grillaEventos_RowCommand(Object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "sacar")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string id = grillaEventos.Rows[index].Cells[0].Text;

                eventoRepositorio repoEventos = new eventoRepositorio(ctx_receta);
                repoEventos.sacarEventoLista(Convert.ToInt32(id));
                Response.Redirect("perfil.aspx");
            }

            if (e.CommandName == "cancelar")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string id = grillaEventos.Rows[index].Cells[0].Text;

                eventoRepositorio repoEventos = new eventoRepositorio(ctx_receta);
                repoEventos.cancelarEvento(Convert.ToInt32(id));
                Response.Redirect("perfil.aspx");
            }
        }

        
    }
}