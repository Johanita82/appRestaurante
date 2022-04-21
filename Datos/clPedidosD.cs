using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Entidades;

namespace appRestaurante.Datos
{
    public class clPedidosD
    {

        public int mtdRegistrarPedido(clPedidosE objDatosPedido)
        {
            string sql = "insert into pedido (nombreCliente, direccionCliente, telefonoCliente, idComida)" +
                "values ('" + objDatosPedido.nombreCliente + "','" + objDatosPedido.direccionCliente + "'," +
                " '" + objDatosPedido.telefonoCliente + "'," + objDatosPedido.idComida + ")";
            clConexion objConexion = new clConexion();

            int resultado = objConexion.mtdConectar(sql);

            return resultado;

        }

    }

}