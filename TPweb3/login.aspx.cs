using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPweb3
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                var user = txbMail.Text;
                string url;

                switch (user)
                {
                    case "cocinero":
                        url = "cocinero/perfil.aspx";
                        Response.Redirect(url);
                        break;
                    case "comensal":
                        url = "comensal/perfil.aspx";
                        Response.Redirect(url);
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