using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool a = false;
            if (Session["user"] != null)
            {
                a = true;
            }

            if (!a)
            {
                if (Session["admin"] != null)
                {
                    Response.Redirect("indexlog.aspx");
                }
            }
            else
            {
                Response.Redirect("indexlog.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Usuarios user = new Usuarios();
            //if (!user.BuscarUsuario(txtNombre.Text))
            //{
            //    if (txtCon.Text.Length > 6)
            //    {
            //        Errorlabel.Text = "";
            //        Usuarios nuevo = new Usuarios();
            //        nuevo.GuardarUsuario(txtNombre.Text, txtCon.Text, txtCorreo.Text);
            //        Response.Redirect("login.aspx?registrado=1");
            //    }
            //    else
            //    {
            //        Errorlabel.Text = "La contraseña tiene que ser mayor a 6 caracteres o digitos";
            //    }
            //}
            //else
            //{
            //    Errorlabel.Text = "El usuario ya existe";
            //}
        }
    }
}