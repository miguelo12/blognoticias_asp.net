using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Users
{
    [System.ComponentModel.DataObject]
    public class Usuarios
    {

        private Datos.BDDwikiTableAdapters.usuarioTableAdapter usuario;
        private Datos.BDDwikiTableAdapters.adminTableAdapter admin;

        public Usuarios()
        {
            usuario = new Datos.BDDwikiTableAdapters.usuarioTableAdapter();
            admin = new Datos.BDDwikiTableAdapters.adminTableAdapter();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
        public bool GuardarUsuario(string idUsuario, string Contrasena, string Correo)
        {
            bool res = false;
            if (idUsuario != null && Contrasena != null && Correo != null)
            {
                if ((int)usuario.Validator(idUsuario) < 1)
                {
                    usuario.Insert(idUsuario, null, null, null, null, Correo, Contrasena);
                    res = true;
                }
                else
                {
                    res = false;
                }
            }
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
        public int ModificarUsusario(string direccion,string sexo,string pais,string telefono,string Correo,string original_idUsuario)
        {
            int res = 0;
            usuario.UpdateSinPass(direccion, sexo, pais, telefono, Correo, original_idUsuario);
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
        public int Eliminar(string original_idUsuario)
        {
            int res = 0;
            res = usuario.Delete1(original_idUsuario);
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public Datos.BDDwiki.usuarioDataTable TraerTodo()
        {
            return usuario.GetData();
        }

        public bool ValidarUsuario(string nombre,string password)
        {
            bool res = false;
            if ((int)usuario.Login(nombre,password)>0)
            {
                res = true;
            }
            else
            {
                res = false;
            }
            return res;
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,false)]
        public Datos.BDDwiki.usuarioDataTable BuscarUsuario(string idUsuario)
        {
            return usuario.BuscarUsuario(idUsuario);
        }

        public bool BusquedaAdmin(string nombre)
        {
            bool res = false;
            if ((int)admin.Validator(nombre) > 0)
            {
                res = true;
            }
            else
            {
                res = false;
            }
            return res;
        }
    }
}
