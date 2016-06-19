using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using accesoDatos;
using repositorios;

namespace TPweb3
{
    public partial class Comensal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            usuario = (Usuarios)Session["user"];

            if (usuario.IdTipoUsuario != 2)
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }
    }
}