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
            <div class="header__admin">
                <asp:Label ID="Label1" runat="server" Text="Bienvenidos |" class="title">
                    <asp:Label ID="LbUser" runat="server" Text=" _____"></asp:Label>
                </asp:Label>
            </div>
            <div class="table__solicitud">
                <asp:Label ID="Label2" runat="server" Text="Tabla de Solicitudes" class="container__title title__label"></asp:Label>

                <asp:GridView ID="Gw_Tb" runat="server" AllowCustomPaging="True" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="ID_USUARIO" DataSourceID="SQL_DATOS1" OnSelectedIndexChanged="Gw_Tb_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="961px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="ID_USUARIO" HeaderText="ID USUARIO" InsertVisible="False" ReadOnly="True" SortExpression="ID_USUARIO" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                        <asp:BoundField DataField="TIEMPO_ESTIMADO" HeaderText="TIEMPO ESTIMADO" SortExpression="TIEMPO_ESTIMADO" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                        <asp:BoundField DataField="TIPO_FALTA" HeaderText="TIPO FALTA" SortExpression="TIPO_FALTA" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SQL_DATOS1" runat="server" ConnectionString="<%$ ConnectionStrings:SOLICITUD_PERMISOSConnectionString5 %>" SelectCommand="SP_TABLA_DATOS" SelectCommandType="StoredProcedure" ProviderName="<%$ ConnectionStrings:SOLICITUD_PERMISOSConnectionString5.ProviderName %>"></asp:SqlDataSource>

                <asp:Label ID="Label3" runat="server" Text="Nombre" class="container__title title__label"></asp:Label>
                <asp:Label ID="LbNombre" runat="server" Text="------"></asp:Label>



                <asp:Label runat="server" Text="Tiempo solicitado" class="container__title title__label"></asp:Label>
                <asp:Label ID="LbTiempoSolicitado" runat="server" Text="------"></asp:Label>


                <asp:Label ID="Label4" runat="server" Text="Motivo" class="container__title title__label"></asp:Label>
                <asp:Label ID="LbMotivo" runat="server" Text="------"></asp:Label>


                <asp:Label ID="Label10" runat="server" Text="Tipo de Falta" class="container__title title__label"></asp:Label>
                <asp:Label ID="Lb_TiempoSoli" runat="server" Text="-----"></asp:Label>

                <asp:Label ID="Label11" runat="server" Text="Comentario" class="container__title title__label"></asp:Label>
                <asp:TextBox ID="txtComentario" class="textarea__box" runat="server"></asp:TextBox>

                <div class="group__button">
                    <asp:Button ID="btn_Aprobado" runat="server" Text="Aprobar" OnClick="btn_Aprobado_Click" class="button" />
                    <asp:Button ID="btn_Rechazar" runat="server" Text="Rechazar" OnClick="btn_Rechazar_Click" class="button" />
                </div>

            </div>
            <div class="table__asistencia">

                <asp:Label ID="LbMensaje" runat="server" Text="______"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Control de Asistencia" class="container__title title__label title__label--change"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Buscador " class="title__label"></asp:Label>
                <div>

                    <asp:TextBox ID="txt_Buscar" runat="server" class="textarea__input"></asp:TextBox>
                    <asp:Button ID="btn_Buscar" runat="server" Text="Buscar" OnClick="Button3_Click" class="button--change" />
                </div>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SQL_DATOS2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                        <asp:BoundField DataField="FECHA_MARCA" HeaderText="FECHA_MARCA" SortExpression="FECHA_MARCA" />
                        <asp:BoundField DataField="HORA_ENTRADA" HeaderText="HORA_ENTRADA" SortExpression="HORA_ENTRADA" />
                        <asp:BoundField DataField="FECHA_MARCA1" HeaderText="FECHA_MARCA1" SortExpression="FECHA_MARCA1" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SQL_DATOS2" runat="server" ConnectionString="<%$ ConnectionStrings:SOLICITUD_PERMISOSConnectionString5 %>" SelectCommand="SP_BUSCAR_USUARIO" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txt_Buscar" Name="Nombre" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
