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
    public partial class login : System.Web.UI.Page
    {
        bd_tp_Entities ctx_usuario = new bd_tp_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuarios user;

            Page.Validate();
            if (Page.IsValid)
            {
                usuarioRepositorio repo = new usuarioRepositorio(ctx_usuario);

                user = repo.checkUsuario(txbMail.Text, txbContraseña.Text);
                Session["user"] = user;

                switch (user.IdTipoUsuario)
                {
                    case 1:
                        Response.Redirect("cocinero/perfil.aspx");
                        break;
                    case 2:
                        Response.Redirect("comensal/perfil.aspx");
                        break;
                }
                 
            }       
                else
                {
                    //mensaje de error
                }   
            
        }
    }
}