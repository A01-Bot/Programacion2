using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace proyecto_solicitudes
{
    public partial class Admin : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              /*  LbUser.Text = Session["NOMBRE"].ToString();*/
            }
        }


        protected void Gw_Tb_SelectedIndexChanged(object sender, EventArgs e)
        {
            LbNombre.Text = Gw_Tb.SelectedRow.Cells[2].Text.ToString();
            LbTiempoSolicitado.Text = Gw_Tb.SelectedRow.Cells[3].Text.ToString();
            LbMotivo.Text = Gw_Tb.SelectedRow.Cells[4].Text.ToString();
            Lb_TiempoSoli.Text = Gw_Tb.SelectedRow.Cells[5].Text.ToString();
        }

        protected void btn_Aprobado_Click(object sender, EventArgs e)
        {
            try
            {

                string EstadoA = "A";

                ds = ws.ModificarSolicitud(int.Parse(Gw_Tb.SelectedRow.Cells[1].Text.ToString()), EstadoA, txtComentario.Text);
            }
            catch (Exception ex)
            {

                LbMensaje.Text = "Error!.. Datos no envidos";
            }
        }

        protected void btn_Rechazar_Click(object sender, EventArgs e)
        {
            try
            {

                string EstadoA = "R";

                ds = ws.ModificarSolicitud(int.Parse(Gw_Tb.SelectedRow.Cells[1].Text.ToString()), EstadoA, txtComentario.Text);
            }
            catch (Exception ex)
            {

                LbMensaje.Text = "Error!.. Datos no envidos";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                ds = ws.BuscarControl(txt_Buscar.Text);
            }
            catch (Exception ex) 
            {

            }
        }
    }
}