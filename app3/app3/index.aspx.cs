using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class index : System.Web.UI.Page
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

            Noticias noti = new Noticias();
            if (noti.NoticiaPrincipal() != -1)
            {
                TituloPrincipal.NavigateUrl += "?noticia=" + noti.NoticiaPrincipal();
                TituloPrincipal.Text = noti.EntregarNoticiaporID(noti.NoticiaPrincipal()).Rows[0][6].ToString();
                TextoPrincipal.Text = noti.EntregarNoticiaporID(noti.NoticiaPrincipal()).Rows[0][1].ToString();
            }

            //separa los textos por el espacio.
            TituloNoticia1.Text = noti.EntregarNoticiaporID(noti.NoticiaPrincipal()).Rows[0][6].ToString();
            int buscador = TextoPrincipal.Text.IndexOf("<br/>");
            string parrafo = TextoPrincipal.Text.Substring(buscador);
            TextoNoticia1_1.Text = parrafo;
            TextoNoticia1_2.Text = TextoPrincipal.Text.Substring(buscador, parrafo.Length);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Usuarios user = new Usuarios();
            if (Session["user"] == null)
            {
                if (user.ValidarUsuario(TextBox1.Text, TextBox2.Text))
                {
                    Session.Add("user", TextBox1.Text);

                    if (user.BusquedaAdmin(TextBox1.Text))
                    {
                        Session.Add("admin", TextBox1.Text);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("registro.aspx");
        }
    }
}