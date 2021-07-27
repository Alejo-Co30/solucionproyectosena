using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectosena
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text !="" && TextBox7.Text !="")
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["miconexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into registroem( nombre, apellido, cedula, cargo, correo, edad, telefono) values ('" + TextBox1.Text + "','" +  TextBox2.Text + "','" + TextBox3.Text + "','" +TextBox4.Text
                + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", conexion);
                comando.ExecuteNonQuery();
                lbl1.Text = "Gracias por su información";
                conexion.Close();
               
            }
            else
            {
                lbl1.Text = "Por favor ingrese todos los campos";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txttest1.Text != "" && txttest2.Text != "" && txttest3.Text != "" && txttest4.Text != "" && txttest5.Text != "" && txttest6.Text != "" && txttest7.Text != "" && txttest8.Text != "" )
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["miconexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into test(prg1, prg2, prg3, prg4, prg5, prg6, prg7, prg8) values ('" + txttest1.Text + "','" + txttest2.Text
                + "','" + txttest3.Text + "','" + txttest4.Text + "','" + txttest5.Text + "','" + txttest6.Text + "','" + txttest7.Text + "','" + txttest8.Text + "')", conexion);
                comando.ExecuteNonQuery();
                lbl2.Text = "Muchas gracias por participar";
                conexion.Close();
            }
            else
            {
                lbl2.Text = "Por favor ingrese todos los campos";
            }
            
        }

      

       
    }
}