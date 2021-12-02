using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Examen2_B77861_B64062_B72388
{
	public class Producto
	{
		public Producto()
		{
		}

		public Producto(string descripcion_producto, string preparacion_producto)
		{
			this.descripcion_producto = descripcion_producto;
			this.preparacion_producto = preparacion_producto;
		}

		string descripcion_producto { get; set; }
		string preparacion_producto { get; set; }

	}
}

