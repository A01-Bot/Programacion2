<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="proyecto_solicitudes.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 504px;
        }
    </style>
</head>
<body style="height: 569px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Bienvenidos :"></asp:Label>
            <asp:Label ID="LbUser" runat="server" Text="_____"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Tabla de Solicitudes"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Width="278px">
            </asp:GridView>
            <asp:Label ID="Label3" runat="server" Text="Nombre :"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="------"></asp:Label>
            <br />
            <asp:Label runat="server" Text="Tiempo solicitado:"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="------"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Motivo :"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="------"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Rechazar" />
            <asp:Button ID="Button2" runat="server" Text="Aprobar" />
        </div>
    </form>
</body>
</html>
