using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using appRestaurante.Entidades;
using System.Data;

namespace appRestaurante.Datos
{
    public class clComidaD
    {
        public List<clComidaE> mtdListarComida()
        {
            string sql = "select * from comida";
            clConexion objConexion = new clConexion();
            DataTable tblcomida = new DataTable();
            tblcomida = objConexion.mtdDesconectado(sql);

            List<clComidaE> ListaComida = new List<clComidaE>();

            int cantReg = tblcomida.Rows.Count;

            for (int i = 0; i < cantReg; i++)
            {
                clComidaE objDatosComida = new clComidaE();
                objDatosComida.idComida = int.Parse(tblcomida.Rows[i]["idComida"].ToString());
                objDatosComida.nombreComida = tblcomida.Rows[i]["nombreComida"].ToString();
                objDatosComida.idEspecialidad = int.Parse(tblcomida.Rows[i]["idEspecialidad"].ToString());
                ListaComida.Add(objDatosComida);

            }

            return ListaComida;

        }

    }
}