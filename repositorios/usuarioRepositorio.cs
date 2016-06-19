using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using accesoDatos;


namespace repositorios
{
    public class usuarioRepositorio
    {
        bd_tp_Entities contexto;

        public usuarioRepositorio (bd_tp_Entities ctx)
        {
            contexto = ctx;
        }

        public Boolean agregarUsuario(Usuarios nuevo) {

            Usuarios usuarioLogeado;

            usuarioLogeado = (from usuario in contexto.Usuarios
                              where usuario.Email == nuevo.Email
                              select usuario).FirstOrDefault();
            if (usuarioLogeado == null)
            {
                contexto.Usuarios.Add(nuevo);
                contexto.SaveChanges();
                var a = true;
                return a;
            }
            else 
            {
                var a = false;
                return a;
            }
            
        }

        public Usuarios checkUsuario(string mail, string password) {

            Usuarios usuarioLogeado;
           
                usuarioLogeado = (from usuario in contexto.Usuarios
                                  where usuario.Email == mail && usuario.Password == password
                                  select usuario).First();

                return usuarioLogeado;
        }
    }
}
