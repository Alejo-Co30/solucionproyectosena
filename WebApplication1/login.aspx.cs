using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace proyectosena
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["miconexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            
            try
            {
                string cedula = txtcedula.Text;
                string clave = txtclave.Text;
                conexion.Open();
                string la = "select * from loginadministrador where cedula ='" + cedula + "'and clave = '" + clave + "' ";
                SqlCommand comando = new SqlCommand(la, conexion);
                SqlDataReader sdr = comando.ExecuteReader();

                if (sdr.Read())
                {
                    Label1.Text = "Inicio de sesión con exito: ";
                    Session["nombreusuario"] = sdr["cedula"];
                    Response.Redirect("admini.aspx");
                }
                else
                {
                    Label1.Text = "Error de inicio de sesión";
                }

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Borrar(object sender, EventArgs e)
        {

        }
    }
}