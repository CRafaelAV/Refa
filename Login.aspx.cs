using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Refaccionaria
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cad = @"Server= (local); Data Source=.\PAWR;Initial Catalog=registrousuarios;Integrated Security=True";
            string cadena = "SELECT * FROM registrousuarios where usuario='" + txtUser.Text +"'";

            SqlConnection conexion = new SqlConnection(cad);
            conexion.Open();
            SqlCommand comando = new SqlCommand(cadena, conexion);
            comando.ExecuteNonQuery();

            SqlDataReader dr;
            dr = comando.ExecuteReader();

            if (dr.Read())
            {
                if (dr.HasRows)
                {
                    string consulta = "SELECT * FROM reguser where usuario='" + txtUser.Text + "' and where contrasena = '"+ txtPass.Text+"'";
                    SqlCommand pass = new SqlCommand(consulta, conexion);
                    SqlDataReader dr2;
                    dr2 = pass.ExecuteReader();
                    if (dr2.Read())
                    {
                        if (dr2.HasRows)
                        {
                            Response.Redirect("Index.");

                        }
                        else
                        {

                            lblerror.Text = "No existe ese usuario";
                        }

                    }

                }
                else
                {
                    lblerror.Text = "No existe ese usuario";
                }
                   
            }
            else
            {
                
            }
            conexion.Close();
        }
    }
}
    
