using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Url.Query.ToString().Equals("?error=1"))
            {
                if (Request.QueryString["error"].Equals("1"))
                {
                    ErrorText.Text = "Tuvo un problema en el usuario o en su password.";
                }
            }

            if (Request.Url.Query.ToString().Equals("?registrado=1"))
            {
                if (Request.QueryString["registrado"].Equals("1"))
                {
                    ErrorText.Text = "Acaba de registrarse, inicia sesion.";
                }
            }

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Usuarios user = new Usuarios();
            if (Session["user"] == null)
            {
                if (user.ValidarUsuario(TextBox2.Text, TextBox3.Text))
                {
                    Session.Add("user", TextBox2.Text);

                    if (user.BusquedaAdmin(TextBox2.Text))
                    {
                        Session.Add("admin", TextBox2.Text);
                    }
                    Response.Redirect("indexlog.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx?error=1");
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}