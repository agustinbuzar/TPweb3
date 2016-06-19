using accesoDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace repositorios
{
    public class reservaRepositorio
    {
        bd_tp_Entities contexto;

        public reservaRepositorio(bd_tp_Entities ctx) {
            contexto = ctx;
        }

    }
}
