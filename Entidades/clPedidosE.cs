using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appRestaurante.Entidades
{
    public class clPedidosE
    {
        public int idPedido { get; set; }
        public string nombreCliente { get; set; }
        public string direccionCliente { get; set; }
        public string telefonoCliente { get; set; }
        public int idComida { get; set; }

    }

}