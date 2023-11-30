<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudPermiso.aspx.cs" Inherits="proyecto_solicitudes.SolicitudPermiso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>APP | SOLICITUDES</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="solicitud__form">

        <div class="solicitud__container">
            <div class="container__front">
                <h2 class="solicitud__title">Solicitud de permisos </h2>
            </div>
            <div class="container__back">
                <div class="solicitud__control">
                    <h4 class="container__title">Nombre del solicitante</h4>
                    <asp:Label ID="lB_NameUser" runat="server" Text=".."></asp:Label>


                    <div class="container__control">
                        <h4 class="container__title">Tipo de Falta</h4>
                        <div class="container__radiobutton">
                            <asp:RadioButtonList ID="Rbtn_falta" runat="server" RepeatDirection="Horizontal" Width="407px">
                                <asp:ListItem Text="Leve" Value="Leve">Leve</asp:ListItem>

                                <asp:ListItem Text="Importante" Value="Importante">Importante </asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <h4 class="container__title">Tiempo solicitado</h4>
                        <asp:TextBox ID="Txt_TiempoSolicitado" runat="server" class="solicitud__input solicitud__input--change"></asp:TextBox>
                        <h4 class="container__title">Motivo</h4>
                        <asp:TextBox ID="Txt_Motivo" runat="server" class="solicitud__input"></asp:TextBox>
                    </div>


                    <asp:Button ID="btnEnviar" runat="server" class="button" OnClick="btnEnviar_Click" Text="Enviar" />
                    <!--
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="LbMensaje" runat="server" Text="-----" BorderStyle="None"></asp:Label>
                </asp:Panel>
                -->
                </div>
            </div>
        </div>

    </form>
</body>
</html>
