using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users;

namespace app3
{
    public partial class noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Comentarios coment = new Comentarios();
                if (coment.EntregarComentarios() != null)
                {
                    string numnot = Request.QueryString["noticia"];
                    if (numnot != null)
                    {
                        Repeater1.DataSource = coment.Entregarcomentarioporidnoticia(int.Parse(numnot));
                        Repeater1.DataBind();
                    }
                    else
                    {
                        Response.Redirect("Error.aspx");
                    }
                }
            }

            int idnoti = int.Parse(Request.QueryString["noticia"]);
            Noticias noti = new Noticias();
            if (noti.EntregarNoticiaporID(idnoti)!=null)
            {
                Titulo.Text = noti.EntregarNoticiaporID(noti.NoticiaPrincipal()).Rows[0][6].ToString();
                string Text = noti.EntregarNoticiaporID(noti.NoticiaPrincipal()).Rows[0][1].ToString();
                //separa los textos por el espacio.
                int buscador = Text.IndexOf("<br/>");
                string parrafo = Text.Substring(buscador);
                Parrafo1.Text = parrafo;
                Parrafo2.Text = Text.Substring(buscador, parrafo.Length);
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //limpiar.
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //enviar.
            DateTime myDateTime = DateTime.Now;
            //string sqlFormattedDate = myDateTime.ToString("yyyy-MM-dd HH:mm:ss");
            string numnot = Request.QueryString["noticia"];
            if (numnot!=null) {
                Comentarios coment = new Comentarios();
                if (coment.GuardarComentario(TextBox3.Text, TextBox1.Text, TextBox2.Text, int.Parse(numnot), myDateTime))
                {
                    Response.Redirect("noticias.aspx");
                } }
        }
    }
}