<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudPermiso.aspx.cs" Inherits="proyecto_solicitudes.SolicitudPermiso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 733px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
            width: 733px;
            text-align: right;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 506px">
    <form id="form1" runat="server">
        <div>
             <table style="width:100%;">
                 <tr>
                     <td class="auto-style1" colspan="2">Solicitud de permisos </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">Solicitud por :</td>
                     <td class="auto-style2">
                         <asp:Label ID="lB_NameUser" runat="server" Text=".."></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Tipo de Falta : </td>
                     <td>
                         <asp:RadioButtonList ID="Rbtn_falta" runat="server" RepeatDirection="Horizontal">
                             <asp:ListItem Text="Leve" Value="Leve">Leve</asp:ListItem>
                             <asp:ListItem Text="Importante" Value="Importante">importante </asp:ListItem>
                         </asp:RadioButtonList>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Tiempo solicitado :</td>
                     <td>
                         <asp:TextBox ID="Txt_TiempoSolicitado" runat="server" Height="27px" Width="138px" ></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">Movito&nbsp; :</td>
                     <td>
                         <asp:TextBox ID="Txt_Motivo" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style6" colspan="2">
                         <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
                     </td>
                 </tr>
             </table>
             <asp:Panel ID="Panel1" runat="server">
                 <asp:Label ID="LbMensaje" runat="server" Text="-----" BorderStyle="None"></asp:Label>
             </asp:Panel>
        </div>
    </form>
</body>
</html>
