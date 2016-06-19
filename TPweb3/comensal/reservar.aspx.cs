using accesoDatos;
using repositorios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TPweb3.comensal
{
    public partial class reservar : System.Web.UI.Page
    {
        bd_tp_Entities ctx_receta = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            reservaRepositorio repoEventos = new reservaRepositorio(ctx_receta);
            List<Eventos> listaEventos = repoEventos.listarEventos();
            grillaEventos.DataSource = listaEventos;
            grillaEventos.DataBind();
        }

    }
}