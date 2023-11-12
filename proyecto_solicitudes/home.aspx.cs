using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace proyecto_solicitudes
{
    public partial class home : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();
        string Hora = DateTime.Now.ToString("h:mm:ss ");
        string Fecha = DateTime.Now.ToShortDateString();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                LbFecha.Text = Fecha;
                LbHora.Text = Hora;
                LbUser.Text = Session["NOMBRE"].ToString();
               string idUser = Session["ID_USUARIO"].ToString();
            
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("SolicitudPermiso.aspx");
        }

        protected void btn_MarcarEntrada_Click(object sender, EventArgs e)
        {

            
           
            try
            {
                ds = ws.ControlAsistencia(int.Parse(Session["ID_USUARIO"].ToString()),DateTime.Parse(Fecha),DateTime.Parse(Hora));
            }
            catch (Exception ex) 
            {
                LbMensaje.Text = "Error!.. Datos no envidos";
            }
        }
    }
}