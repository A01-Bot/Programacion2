<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlAsistencia.aspx.cs" Inherits="proyecto_solicitudes.ControlAsistencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>APP | CONTROL ASISTENCIA</title>
    <style type="text/css">
        .auto-style1 {
            height: 526px;
        }
        .auto-style2 {
            width: 9%;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Control de Asistencia :"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Buscador :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Buscar" />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Salida</td>
                    <td class="auto-style3">S</td>
                </tr>
                <tr>
                    <td>Entrada</td>
                    <td>E</td>
                </tr>
                <tr>
                    <td>Falta</td>
                    <td>F</td>
                </tr>
                <tr>
                    <td>Permiso</td>
                    <td>P</td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
