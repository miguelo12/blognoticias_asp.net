using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Users
{
    [System.ComponentModel.DataObject]
    public class Comentarios
    {
    //    private string Nombre { get; set; }
    //    private string Correo { get; set; }
    //    private string fecha { get; set; }
    //    private string texto { get; set; }
          private Datos.BDDwikiTableAdapters.comentarioTableAdapter comentario;
          private Datos.BDDwikiTableAdapters.mejorcomentarioTableAdapter mejorcom;

        public Comentarios()
        {
            comentario = new Datos.BDDwikiTableAdapters.comentarioTableAdapter();
            mejorcom = new Datos.BDDwikiTableAdapters.mejorcomentarioTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
        public bool GuardarComentario(string textocomentario,string nombre,string correo,int idnoticia,DateTime fecha)
        {
            bool res = false;
            if (comentario.Insert(textocomentario,nombre,correo,null,idnoticia,fecha) == 1)
            {
                res = true;
            }
            else
            {
                res = false;
            }
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public DataTable EntregarComentarios()
        {
            DataTable res;
            if (comentario.GetData().Rows.Count > 0)
            {
                res = comentario.GetData();
            }
            else
            {
                res = null;
            }
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public DataTable Entregarcomentarioporidnoticia(int idnoticia)
        {
            DataTable res;
            if (comentario.Getllenarid(idnoticia).Rows.Count>0)
            {
                res = comentario.Getllenarid(idnoticia);
            }
            else
            {
                res = null;
            }
            return res;
        }

    }
}
