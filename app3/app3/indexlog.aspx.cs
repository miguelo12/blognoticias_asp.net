using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class indexlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("index.aspx");
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
    }
}