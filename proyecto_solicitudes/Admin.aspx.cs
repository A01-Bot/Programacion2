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

        protected void Tb_GW_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ds = ws.DatosTb();
            }
            catch (Exception ex) 
            {
                LbMensaje.Text =Convert.ToString(ex);
            }
        }

        
    }
}