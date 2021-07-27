using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectosena
{
    public partial class migestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" )
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["miconexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into registroad( nombre, apellido, cedula, cargo, correo) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", conexion);
                comando.ExecuteNonQuery();
                Label1.Text = "Gracias por su información";
                conexion.Close();

            }
            else
            {
                Label1.Text = "Por favor ingrese todos los campos";
            }
        }

        protected void NUEVOUSUARIO_Click(object sender, EventArgs e)
        {
           
        }
    }
}