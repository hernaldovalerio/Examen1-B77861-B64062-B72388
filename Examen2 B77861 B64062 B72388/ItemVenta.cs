using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Examen2_B77861_B64062_B72388
{
public class ItemVenta
{
	public ItemVenta()
	{
	}

	public ItemVenta(int Cantidad_Vendida, float precio_unitario, int numero_venta, int producto_id)
	{
		this.Cantidad_Vendida = Cantidad_Vendida;
		this.precio_unitario = precio_unitario;
		this.numero_venta = numero_venta;
		this.producto_id = producto_id;

	int Cantidad_Vendida { get; set; }
	float precio_unitario { get; set; }
	int numero_venta { get; set; }
	int producto_id { get; set; }

}
}

