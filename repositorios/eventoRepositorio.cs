using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using accesoDatos;

namespace repositorios
{
    public class eventoRepositorio
    {
        bd_tp_Entities contexto;

        public eventoRepositorio (bd_tp_Entities ctx)
        {
            contexto = ctx;
        }

        public void crearEvento(Eventos nuevoEvento) {
            contexto.Eventos.Add(nuevoEvento);
        }

        public Recetas idReceta(int id) {
            Recetas receta_asig = (from receta in contexto.Recetas
                                   where receta.IdReceta == id
                                   select receta).First();
            return receta_asig;
        }

        public void save(){
            contexto.SaveChanges();
        }

        public List<Eventos> listarEventos()
        {
            List<Eventos> lista = (from evento in contexto.Eventos
                                   where evento.Estado == 1
                                   select evento).ToList();
            return lista;
        }

        public void sacarEventoLista(int id) {

            Eventos eventoASacar = (from evento in contexto.Eventos
                                    where evento.IdEvento == id
                                    select evento).First();

            eventoASacar.Estado = 0;
            contexto.SaveChanges();
        }

        public void cancelarEvento(int id)
        {

            Eventos eventoACancelar = (from evento in contexto.Eventos
                                        where evento.IdEvento == id
                                        select evento).First();

            eventoACancelar.Estado = 3;
            contexto.SaveChanges();
        }
    }
}
