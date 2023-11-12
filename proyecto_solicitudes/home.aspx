<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="proyecto_solicitudes.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style22 {
            width: 1487px;
            height: 490px;
            text-align: left;
        }
        .auto-style23 {
            font-size: x-large;
        }
        .auto-style24 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 532px">
    <form id="form1" runat="server">
        <div class="auto-style22">
            <asp:Image ID="Image1" runat="server" Height="238px" Width="186px" />
            <asp:Label ID="Label3" runat="server" Text="Mensaje "></asp:Label>
            ........
            <br />
            <asp:Label ID="LbHora" runat="server" CssClass="auto-style24" Text="00:00:00"></asp:Label>
            <br />
            <asp:Label ID="LbFecha" runat="server" CssClass="auto-style23" Text="00/00/000"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Bienvenido:"></asp:Label>
            <asp:Label ID="LbUser" runat="server" Text="----"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_MarcarEntrada" runat="server" Text="Marcar Entrada" OnClick="btn_MarcarEntrada_Click" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_MarcarSalida" runat="server" Text="Marcar Salida" Width="135px" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Solicitude Permiso " />
                    <br />
            <asp:Label ID="LbMensaje" runat="server" Text="******"></asp:Label>
            <br />
            <br />
                    </div>
    </form>
</body>
</html>
<%--  --%>