<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VentanaPrincipal.aspx.cs" Inherits="Carrito.VentanaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <script type="text/javascript">
    
        function alerta() {
            alert('Se ha añadido un producto al carrito');
        }

        function alerta2() {
            alert('Se ha añadido un producto a a tus favoritos');
        }
    </script>
<body>
    <form id="form1" runat="server">
        <div>
            Cantidad:&nbsp;
            <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
        </div>
        <p>
            Nombre producto:
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </p>
&nbsp;Precio:<asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        <p>
        <asp:DropDownList ID="dropSeleccion" runat="server" AutoPostBack="True">
            <asp:ListItem Value="0">Seleccione una opción</asp:ListItem>
            <asp:ListItem Value="1">Añadir al carrito</asp:ListItem>
            <asp:ListItem Value="2">Añadir a mis favoritos</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnAñadir" runat="server" OnClick="btnAñadir_Click" Text="AÑADIR" Width="140px" />
        </p>
        <asp:ListView ID="listVCarrito" runat="server">
        </asp:ListView>
        <asp:ListView ID="listVFav" runat="server">
        </asp:ListView>
    </form>
</body>
</html>
