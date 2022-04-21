using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Datos;
using appRestaurante.Entidades;


namespace appRestaurante.Logica
{
    public class clPedidosL
    {
        public int mtdRegistrarPedido(clPedidosE objDatosPedidos)
        {
            clPedidosD objDatosPedido = new clPedidosD();
            int resultado = objDatosPedido.mtdRegistrarPedido(objDatosPedidos);
            return resultado;
        }

    }
}