<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="proyecto_solicitudes.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>APP | ADMIN</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form__admin">
        <div class="container__admin">
            <asp:Label ID="Label1" runat="server" Text="Bienvenido" class="title"></asp:Label>
            <asp:Label ID="LbUser" runat="server" Text="_____"></asp:Label>

            <asp:Label ID="Label2" runat="server" class="container__title title__label">Tabla de Solicitudes</asp:Label>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="Label3" runat="server"  class="container__title title__label" >Nombre</asp:Label>
            <asp:Label ID="Label5" runat="server" Text="------"></asp:Label>

            <asp:Label runat="server"  class="container__title title__label" >Tiempo solicitad</asp:Label>
            <asp:Label ID="Label6" runat="server" Text="------"></asp:Label>

            <asp:Label ID="Label4" runat="server" class="container__title title__label" >Motivo</asp:Label>
            <asp:Label ID="Label7" runat="server" Text="------"></asp:Label>

            <asp:Label ID="Label8" runat="server" class="container__title title__label" Text="Comentario"></asp:Label>
            <asp:TextBox ID="Label9" runat="server" class="textarea__box"></asp:TextBox>
            <div class="group__button">
                <asp:Button ID="Button2" runat="server" Text="Aprobar" class="button" />
                <asp:Button ID="Button1" runat="server" Text="Rechazar" class="button" />
            </div>
        </div>
    </form>
</body>
</html>
