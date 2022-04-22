<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="appRestaurante.Presentacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <title></title>

    <style type="text/css">

        .btn-success {
            height: 55px;
            width: 337px;
        }

        .btn-danger {
            height: 51px;
            width: 354px;
            margin-top: 0px;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div>

            <div class="p-5 bg-primary text-white">
                <h1>PEDIDOS RESTAURANTE</h1>
                <p>Especialidad en Comidas Rapidas </p>
            </div>

            <div class="p-5 bg-primary text-white">
                <h1>PEDIDOS RESTAURANTE HECHO POR JHAN</h1>
                <p>Especialidad en Comidas Rapidas </p>
            </div>

            <div class="form-group">

                <br />
                <br />

                <asp:Button CssClass="btn-success m-5" ID="btnConAjax" runat="server" Text="CON AJAX " OnClick="btnConAjax_Click"/>
                <asp:Button CssClass="btn-success m-5" ID="btnSinAjax" runat="server" Text="SIN AJAX" OnClick="btnSinAjax_Click"/>

            </div>

        </div>

    </form>

</body>

</html>
