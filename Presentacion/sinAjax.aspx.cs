using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using appRestaurante.Datos;
using appRestaurante.Entidades;
using appRestaurante.Logica;

namespace appRestaurante.Presentacion
{
    public partial class sinAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                clComidaL objComida = new clComidaL();
                ddlComida.DataSource = objComida.mtdListarComida();
                ddlComida.DataValueField = "idComida";
                ddlComida.DataTextField = "nombreComida";
                ddlComida.DataBind();
                ddlComida.Items.Insert(0, new ListItem("Seleccione", "0"));

            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            int idComida = int.Parse(ddlComida.SelectedValue.ToString());

            if (idComida > 0)
            {
                clPedidosE objDatosPedidos = new clPedidosE();
                objDatosPedidos.nombreCliente = txtNombres.Text;
                objDatosPedidos.direccionCliente = txtDireccion.Text;
                objDatosPedidos.telefonoCliente = txtTelefono.Text;
                objDatosPedidos.idComida = idComida;

                clPedidosL objPedidos = new clPedidosL();
                int resultado = objPedidos.mtdRegistrarPedido(objDatosPedidos);

                if (resultado > 0)
                {
                    lblmensaje.Text = "Pedido realizado con exito";
                }
                else
                {
                    lblmensaje.Text = "Error al realizar el pedido";
                }

            }
            else
            {
                lblmensaje.Text = "Seleccione una comida";
            }

        }
    }

}


