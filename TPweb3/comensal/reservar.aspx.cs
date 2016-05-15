using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPweb3.clases;

namespace TPweb3.comensal
{
    public partial class reservar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Receta recetita = new Receta();
            recetita.Nombre = "arroz con pollo";
            recetita.TiempoCoccion = 10;
            recetita.Tipo = "gourmet";
            recetita.agregarIngrediente("arroz");
            recetita.agregarIngrediente("pollo");
            Evento eventito = new Evento();
            eventito.Nombre = "Cena con los Pi";
            eventito.Precio = 15;
            eventito.Fecha = "04/08/2016 20:30 hrs";
            eventito.Descripcion = "Nos juntamos con amigos para disfrutar de la gran comida gourmet del Arroz con Poio";
            eventito.Direccion = "Montevideo 53, Villa Madero, La Matanza, Bs As, Argentina";
            eventito.CantidadMaxima = 5;
            eventito.agregarReceta(recetita);
            List<Evento> eventos = new List<Evento>();
            eventos.Add(eventito);
            grillaEventos.DataSource = eventos;
            grillaEventos.DataBind();
        }

        
    }
}