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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registrar_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Server = (local); Data Source =.\PAWR; Initial Catalog = registrousuarios; Integrated Security = True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[reguser]
           ([nombre]
           ,[direccion]
           ,[ntelefono]
           ,[email]
           ,[usuario]
           ,[contrasena])
     VALUES
           ('" + Textnombre.Text + "', '" + Textdireccion.Text + "','" + Textntelefono.Text + "','" + Textemail.Text + "','" + Textusuario.Text + "','" + TextContrasena.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<Script>alert('Registro exitoso')</Script>");
        }
    }
}