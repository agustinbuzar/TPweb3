using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPweb3.clases
{
    public class Receta
    {
        private string nombre;
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private int tiempoCoccion;
        public int TiempoCoccion
        {
            get { return tiempoCoccion; }
            set { tiempoCoccion = value; }
        }
        private string descripcion;
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private List<string> ingredientes=new List<string>();
        public List<string> Ingredientes
        {
            get { return ingredientes; }
            set { ingredientes = value; }
        }
        public void agregarIngrediente(string ingrediente)
        {
            ingredientes.Add(ingrediente);
        }
        private string tipo;
        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }
    }
    public class Evento
    {
        private string nombre;
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string fecha;
        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        private string descripcion;
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private List<Receta> recetasPropuestas=new List<Receta>();
        public List<Receta> RecetasPropuestas
        {
            get { return recetasPropuestas; }
            set { recetasPropuestas = value; }
        }
        public void agregarReceta(Receta receta)
        {
            recetasPropuestas.Add(receta);
        }
        private int cantidadMaxima;
        public int CantidadMaxima
        {
            get { return cantidadMaxima; }
            set { cantidadMaxima = value; }
        }
        private string direccion;
        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private int precio;
        public int Precio
        {
            get { return precio; }
            set { precio = value; }
        }
    }
}