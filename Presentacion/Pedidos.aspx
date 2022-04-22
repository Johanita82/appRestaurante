<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="appRestaurante.Presentacion.Pedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>PEDIDOS RESTAURANTE</title>
    
    <h1>Prueba</h1>
</head>

<body>

    <form id="form1" runat="server">

        &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>

                <div class="p-5 bg-primary text-white">
                    <h1>PEDIDOS RESTAURANTE</h1>
                    <p style="height: 27px; width: 867px;">Especialidad en Comidas Rapidas </p>
                </div>

                <div class="form-group mb-3">
                    <label for="txtNombres">Nombres:</label>
                    <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Nombres..."></asp:TextBox>
                </div>

                <div class="form-group mb-3">
                    <label for="txtDireccion">Direccion:</label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Direccion..."></asp:TextBox>
                </div>

                <div class="form-group mb-3">
                    <label for="txtTelefono">Telefono:</label>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Telefono..."></asp:TextBox>
                </div>
                
                <div class="form-group mb-3">
                    <label for="ddlComida">Comida:</label>
                    <asp:DropDownList ID="ddlComida" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <div class="form-group mb-3">
                    <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnAceptar_Click" />
                    <br />
                    <asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label>
                </div>


            </ContentTemplate>

        </asp:UpdatePanel>

    </form>


</body>
</html>
