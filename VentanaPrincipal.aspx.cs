using Carrito.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carrito
{
    public partial class VentanaPrincipal : System.Web.UI.Page
    {

        List<Producto> listaCar = new List<Producto>();
        List<Producto> listaFav = new List<Producto>();

        protected void Page_Load(object sender, EventArgs e)
        {
            listVCarrito.DataSource = listaCar;
            listVFav.DataSource = listaFav;
        }

        protected void btnAñadir_Click(object sender, EventArgs e)
        {
            if (!txtNombre.Equals("") && !txtCantidad.Equals("") && !txtPrecio.Equals(""))
            {
                int cant;
                decimal prec;

                if (int.TryParse(txtCantidad.Text, out cant) && decimal.TryParse(txtPrecio.Text, out prec)) 
                {
                    Producto prod = new Producto
                    {
                        Nombre = txtNombre.Text,
                        Precio = Convert.ToDecimal(txtPrecio.Text),
                        Cantidad = Convert.ToInt32(txtCantidad.Text)
                    };

                    prod.Subtotal = cant * prec;

                    if (dropSeleccion.SelectedValue.Equals(1))
                    {
                        listaCar.Add(prod);
                        string script = @"<script type='text/javascript'>
                            alerta();
                        </script>";

                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                    }
                    else if (dropSeleccion.SelectedValue.Equals(2))
                    {
                        listaFav.Add(prod);
                    }

                    txtNombre.Text = string.Empty;
                    txtPrecio.Text = string.Empty;
                    txtCantidad.Text = string.Empty;
                }

            }
                                                  
        }


    }


}