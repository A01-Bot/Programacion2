using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace proyecto_solicitudes
{
    public partial class Login : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["ID_USUARIO"] = null;
                Session["ID_ROLES"] = null;
                Session["ID_DEPARTAMENTO"] = null;
                Session["NOMBRE"] = null;
                Session["LOGIN"] = null;
                Session["EMAIL"] = null;

            }
        }

     

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                ds = ws.ValidarUsuario(Txt_Usuario.Text, Txt_Password.Text);
                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables["UsuarioValido"].Rows.Count > 0)
                        {

                            if (bool.Parse(ds.Tables["UsuarioValido"].Rows[0]["ESTADO"].ToString()))
                            {
                                Session["ID_USUARIO"] = ds.Tables["UsuarioValido"].Rows[0]["ID_USUARIO"].ToString();
                                Session["ID_ROLES"] = ds.Tables["UsuarioValido"].Rows[0]["ID_ROLES"].ToString();
                                Session["ID_DEPARTAMENTO"] = ds.Tables["UsuarioValido"].Rows[0]["ID_DEPARTAMENTO"].ToString();
                                Session["NOMBRE"] = ds.Tables["UsuarioValido"].Rows[0]["NOMBRE"].ToString();
                                Session["LOGIN"] = ds.Tables["UsuarioValido"].Rows[0]["LOGIN"].ToString();
                                Session["EMAIL"] = ds.Tables["UsuarioValido"].Rows[0]["EMAIL"].ToString();
                                Response.Redirect("home.aspx");

                            }
                            else
                                LbMensaje.Text = "Acceso Denegado!. Usuario Inactivo";
                        }
                        else
                            LbMensaje.Text = "Acceso Denegado!. Usuario o Clave Incorrectos!";
                    }
                    else
                        LbMensaje.Text = "Acceso Denegado!. Sin datos!";
                }
                else
                    LbMensaje.Text = "Acceso Denegado!. Hubo un error en la ejecuciòn del proceso!";
            }
            catch (Exception ex)
            {
                LbMensaje.Text = ex.Message;
            }
        }
    }
}