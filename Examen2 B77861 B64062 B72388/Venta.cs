using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Examen2_B77861_B64062_B72388
{
	public class Venta
	{
		public Venta()
		{
		}

		public Venta(Date fecha_venta, int cliente_id)
		{
			this.fecha_venta = fecha_venta;
			this.cliente_id = cliente_id;
		}

		Date fecha_venta { get; set; }
		int cliente_id { get; set; }

	}
}

