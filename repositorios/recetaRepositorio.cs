using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using accesoDatos;

namespace repositorios
{
    public class recetaRepositorio
    {
        bd_tp_Entities contexto;

        public recetaRepositorio (bd_tp_Entities ctx)
        {
            contexto = ctx;
        }

        public void crearReceta(Recetas nuevaReceta) 
        {
            contexto.Recetas.Add(nuevaReceta);
            contexto.SaveChanges();
        }

        public List<Recetas> listarRecetas()
        {
            List<Recetas> listaRecetas;
            listaRecetas = (from recetas in contexto.Recetas
                             select recetas).ToList();
            return listaRecetas;
        }
    }
}
