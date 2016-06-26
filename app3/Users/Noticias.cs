using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Datos;

namespace Users
{
    public class Noticias
    {
        private Datos.BDDwikiTableAdapters.noticiaTableAdapter noticia;
        private Datos.BDDwikiTableAdapters.noticiaprincipalTableAdapter noticiaP;

        public Noticias()
        {
            noticia = new Datos.BDDwikiTableAdapters.noticiaTableAdapter();
            noticiaP = new Datos.BDDwikiTableAdapters.noticiaprincipalTableAdapter();
        }

        public bool GuardarNoticia(string texto, string idUsuario,string imagen1,string imagen2, string imagenP, string titulo)
        {
            noticia.Insert(texto, idUsuario, imagen1, imagen2, imagenP, titulo);
            return true;
        }

        public int NoticiaPrincipal()
        {
            int b=-1;
            if ((int)noticiaP.Select_idnoticia()>0)
            {
               b = int.Parse(noticiaP.GetData().Rows[0][1].ToString());
            }
            return b;
        }

        public DataTable EntregarNoticias()
        {
            DataTable res;
            if (noticia.GetData().Rows.Count > 0)
            {
                res = noticia.GetData();
            }
            else
            {
                res = null;
            }
            return res;
        }

        public DataTable EntregarNoticiaporID(int an)
        {
            DataTable res;
            if ((int)noticia.validarporID(an)>0)
            {
                res = noticia.GetData_noticiaid(an);
            }
            else
            {
                res = null;
            }
            return res;
        }
    }
}
