using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_solicitudes
{
    public partial class SolicitudPermiso : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                lB_NameUser.Text = Session["NOMBRE"].ToString();
            }
          
        }
        protected void LimpiarCampos() 
        {
            Txt_Motivo.Text = "";
            Rbtn_falta.Text = "";
            Txt_TiempoSolicitado.Text = "";
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                string estado = "P";
                string falta = Rbtn_falta.SelectedItem.Value;
                ds = ws.AgregarSolicitud(int.Parse(Session["ID_USUARIO"].ToString()), estado, Txt_Motivo.Text, falta, Txt_TiempoSolicitado.Text); ;
                LimpiarCampos();
                LbMensaje.Text = estado;
            }
            catch (Exception ex)
            {
                LbMensaje.Text = "Error!.. Datos no envidos";
            }
        }
    }
}