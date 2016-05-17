using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPweb3.clases;

namespace TPweb3.cocinero
{
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Receta recetita = new Receta();
            recetita.Nombre = "arroz con pollo";
            recetita.TiempoCoccion = 10;
            recetita.Tipo = "gourmet";
            recetita.agregarIngrediente("arroz");
            recetita.agregarIngrediente("pollo");
            recetita.Descripcion = "Excelente Arroz Integral, Marinado con los mejores pollos de Zona Oeste";
            Receta recetita2 = new Receta();
            recetita2.Nombre = "Spaghetti con Salsa Parissien";
            recetita2.TiempoCoccion = 30;
            recetita2.Tipo = "gourmet";
            recetita2.agregarIngrediente("fideos");
            recetita2.agregarIngrediente("salsa");
            recetita2.agregarIngrediente("crema");
            recetita2.Descripcion = "Pastas Caceras fabricadas por nosotros, acompañadas de una salsa ganadora de los TopTensGourmet de Buenos Aires";
            Evento eventito = new Evento();
            eventito.Nombre = "Cena con los Amigos";
            eventito.Precio = 15;
            eventito.Fecha = "04/08/2016 20:30 hrs";
            eventito.Descripcion = "Nos juntamos con amigos para disfrutar de la gran comida gourmet del Arroz con Poio";
            eventito.Direccion = "Montevideo 53, Villa Madero, La Matanza, Bs As, Argentina";
            eventito.CantidadMaxima = 5;
            eventito.CantidadReservas = 2;
            eventito.agregarReceta(recetita);
            Evento eventito2 = new Evento();
            eventito2.Nombre = "PastaFest";
            eventito2.Precio = 15;
            eventito2.Fecha = "05/18/2016 20:30 hrs";
            eventito2.Descripcion = "Se realizara una fiesta donde habra diferentes tipos de pasatas y salsas para degustar.";
            eventito2.Direccion = "Montevideo 53, Palermo, Ciudad de Buenos Aires, Bs As, Argentina";
            eventito2.CantidadMaxima = 20;
            eventito2.CantidadReservas = 20;
            eventito2.EstadoEvento = "pendiente";
            eventito2.agregarReceta(recetita2);
            List<Evento> eventos = new List<Evento>();
            List<Receta> recetas = new List<Receta>();
            eventos.Add(eventito);
            eventos.Add(eventito2);
            recetas.Add(recetita);
            recetas.Add(recetita2);
            grillaRecetas.DataSource = recetas;
            grillaRecetas.DataBind();
            grillaEventos.DataSource = eventos;
            grillaEventos.DataBind();
        }

    }
}