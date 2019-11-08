<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Refaccionaria.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center"
            <tr>
                <td>Nombre completo</td>
                <td>
                    <asp:TextBox ID="Textnombre" runat="server" placeholder="Ingrese su nombre completo"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Direccion</td>
                <td>
                    <asp:TextBox ID="Textdireccion" runat="server" placeholder="Ingrese su direccion"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td>
                    <asp:TextBox ID="Textntelefono" runat="server" placeholder="ingrese su numero de telefono"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="Textemail" runat="server" placeholder="Escriba su correo electronico" TextMode="Email"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nombre de usuario</td>
                <td>
                    <asp:TextBox ID="Textusuario" runat="server" placeholder="Escriba su nombre de usuario ejemplo@ejemplo.com"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Contrasena</td>
                <td>
                    <asp:TextBox ID="TextContrasena" runat="server" placeholder="****" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td align="right">
                    <asp:Button ID="registrar" runat="server" Text="Registrar" OnClick="registrar_Click" /></td>
            </tr>
               
          </table>
        </div>
    </form>
</body>
</html>
