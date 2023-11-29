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

<<<<<<< HEAD
            <br />

            <asp:Label ID="Label2" runat="server" Text="Tabla de Solicitudes"></asp:Label>
            <br />
            <asp:GridView ID="Gw_Tb" runat="server" AllowCustomPaging="True" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="ID_USUARIO" DataSourceID="SQL_DATOS1" OnSelectedIndexChanged="Gw_Tb_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID_USUARIO" HeaderText="ID_USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="ID_USUARIO" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="TIEMPO_ESTIMADO" HeaderText="TIEMPO_ESTIMADO" SortExpression="TIEMPO_ESTIMADO" />
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                    <asp:BoundField DataField="TIPO_FALTA" HeaderText="TIPO_FALTA" SortExpression="TIPO_FALTA" />
                    <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SQL_DATOS1" runat="server" ConnectionString="<%$ ConnectionStrings:SOLICITUD_PERMISOS_Conn %>" SelectCommand="SP_TABLA_DATOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
            <asp:Label ID="LbNombre" runat="server" Text="------"></asp:Label>

            <br />

            <asp:Label runat="server" Text="Tiempo solicitado"></asp:Label>
            <asp:Label ID="LbTiempoSolicitado" runat="server" Text="------"></asp:Label>
    
            <br />
    
            <asp:Label ID="Label4" runat="server" Text="Motivo :"></asp:Label>
            <asp:Label ID="LbMotivo" runat="server" Text="------"></asp:Label>
     
            <br />
            <asp:Label ID="Label10" runat="server" Text="Tipo de Falta :"></asp:Label>
            <asp:Label ID="Lb_TiempoSoli" runat="server" Text="-----"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Comentario :"></asp:Label>
            <asp:TextBox ID="txtComentario" runat="server"></asp:TextBox>
            <br />
     
            <br />
     
            <asp:Button ID="btn_Aprobado" runat="server" Text="Aprobar" OnClick="btn_Aprobado_Click" />
     
            <asp:Button ID="btn_Rechazar" runat="server" Text="Rechazar" OnClick="btn_Rechazar_Click" />
            <br />
            <asp:Label ID="LbMensaje" runat="server" Text="______"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Control de Asistencia :"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Buscador :"></asp:Label>
            <asp:TextBox ID="txt_Buscar" runat="server"></asp:TextBox>
            <asp:Button ID="btn_Buscar" runat="server" Text="Buscar" OnClick="Button3_Click" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SQL_DATOS2">
                <Columns>
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SQL_DATOS2" runat="server" ConnectionString="<%$ ConnectionStrings:SOLICITUD_PERMISOS_SQL2 %>" ProviderName="<%$ ConnectionStrings:SOLICITUD_PERMISOS_SQL2.ProviderName %>" SelectCommand="SP_BuscarUsuario" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
=======
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
>>>>>>> 4317f680a3ff7602df9bf243a4ffa266098a9212
        </div>
    </form>
</body>
</html>
