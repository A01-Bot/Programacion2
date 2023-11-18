<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="proyecto_solicitudes.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>APP | HOME</title>
    <link href="css/style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="wrapper__welcome ">
                <asp:Image ID="Image1" runat="server" class="wrapper__image" src="https://picsum.photos/200/300" />
                <asp:Label ID="LbUser" runat="server" class="wrapper__text wrapper__text--space" Text="----"></asp:Label>
                <asp:Label ID="Label1" runat="server" class="wrapper__text wrapper__text--box" Text="Bienvenido"></asp:Label>
            </div>
            <div class="wrapper__content">
                <div class="wrapper__dates">
                    <asp:Label ID="LbFecha" runat="server" class="wrapper__date" Text="00/00/000"></asp:Label>
                    <asp:Label ID="LbHora" runat="server" class="wrapper__date" Text="00:00:00"></asp:Label>
                </div>
                <asp:Label ID="Label3" runat="server" class="title">recuerda siempre marcar tu entrada y salida</asp:Label>
                <div class="wrapper__buttons">
                    <asp:Button ID="btn_MarcarEntrada" class="button" runat="server" Text="Marcar Entrada" OnClick="btn_MarcarEntrada_Click" />
                    <asp:Button ID="btn_MarcarSalida" class="button" runat="server" Text="Marcar Salida" OnClick="btn_MarcarSalida_Click" />
                    <asp:Button ID="Button1" class="button" runat="server" OnClick="Button1_Click" Text="Agregar Solicitude Permiso " />

                    <asp:Label ID="LbMensaje" runat="server" class="hidden"></asp:Label>

                    <asp:Label ID="LbNotificacion" runat="server" Text="Estado de la Solicitud :"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="_____"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <script src="js/main.js"></script>
</body>
</html>
<%--  --%>