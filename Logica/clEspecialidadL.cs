using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Entidades;
using appRestaurante.Datos;
using System.Data;

namespace appRestaurante.Logica
{
    public class clEspecialidadL
    {
        public List<clEspecialidadE> mtdListarEspecialidad()
        {
            clEspecialidadD objEspecialidad = new clEspecialidadD();
            List<clEspecialidadE> ListaEspecialidad = new List<clEspecialidadE>();
            ListaEspecialidad = objEspecialidad.mtdListarEspecialidad();
            return ListaEspecialidad;
        }
    }
}