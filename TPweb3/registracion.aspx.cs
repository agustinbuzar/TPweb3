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
    public partial class join : System.Web.UI.Page
    {
        bd_tp_Entities ctx_usuario = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                usuarioRepositorio repo = new usuarioRepositorio(ctx_usuario);
                Usuarios nuevoUsuario = new Usuarios();

                nuevoUsuario.Nombre = txbNombre.Text;
                nuevoUsuario.Email = txbmail.Text;
                nuevoUsuario.Password = txbReContraseña.Text;
                nuevoUsuario.IdTipoUsuario = Byte.Parse(rblPerfil.SelectedValue);
                nuevoUsuario.FechaRegistracion = DateTime.Now;

                var a = repo.agregarUsuario(nuevoUsuario);

                if (a == true) {
                    if (nuevoUsuario.IdTipoUsuario == 1)
                    {
                        Response.Redirect("cocinero/perfil.aspx");

                    }
                    if (nuevoUsuario.IdTipoUsuario == 2)
                    {
                        Response.Redirect("comensal/perfil.aspx");
                    }
                }
                if (a == false) {
                    Label1.Text = "Email ya existente";
                }
            }
        }
    }
}