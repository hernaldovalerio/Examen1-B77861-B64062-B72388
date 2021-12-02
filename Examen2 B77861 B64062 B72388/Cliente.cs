using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Examen2_B77861_B64062_B72388
{
    public class Cliente
    {
        public Cliente() { }
        public Cliente(string nombre, string apellidos)
        {
            this.nombre = nombre;
            this.apellidos = apellidos;
        }
        public string nombre { get; set; }
        public string apellidos { get; set; }

    }
}
