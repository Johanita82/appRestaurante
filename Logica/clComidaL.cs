using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Entidades;
using appRestaurante.Datos;

namespace appRestaurante.Logica
{
    public class clComidaL
    {
        public List<clComidaE> mtdListarComida()
        {
            clComidaD objComida = new clComidaD();
            List<clComidaE> ListaComida = new List<clComidaE>();
            ListaComida = objComida.mtdListarComida();
            return ListaComida;
        }
    }
}