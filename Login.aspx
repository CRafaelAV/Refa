<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Refaccionaria.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table aling = "center" 
                <tr>
                    <td>Usuario</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" placeholder="Escriba su nombre de usuario"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" placeholder="Escriba su contraseña"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Entrar" runat="server" Text="Entrar" OnClick="Button1_Click" /></td>
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
