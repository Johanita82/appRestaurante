using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Entidades;
using System.Data;

namespace appRestaurante.Datos
{
    public class clEspecialidadD
    {
        public List<clEspecialidadE> mtdListarEspecialidad()
        {
            string sql = "select * from especialidad";
            clConexion objConexion = new clConexion();
            DataTable tblespecialidad = new DataTable();
            tblespecialidad = objConexion.mtdDesconectado(sql);

            List<clEspecialidadE> ListaEspecialidad = new List<clEspecialidadE>();

            int cantReg = tblespecialidad.Rows.Count;

            for (int i = 0; i < cantReg; i++)
            {
                clEspecialidadE objDatosEspecialidad = new clEspecialidadE();
                objDatosEspecialidad.idEspecialidad = int.Parse(tblespecialidad.Rows[i]["idEspecialidad"].ToString());
                objDatosEspecialidad.nombreEspecialidad = tblespecialidad.Rows[i]["nombreEspecialidad"].ToString();
                ListaEspecialidad.Add(objDatosEspecialidad);
            }
            return ListaEspecialidad;

        }

    }
}