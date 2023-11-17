using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
public class Service : IService
{
	DataSet ds = new DataSet();
	SqlDataAdapter da;
	string Conexion = ConfigurationManager.ConnectionStrings["ConexionSql"].ConnectionString;
	string Patron = ConfigurationManager.AppSettings["Patron"].ToString();

	public DataSet ValidarUsuario(string Login, string Password) 
	{
		try
		{
			da = new SqlDataAdapter("SP_ValidarUsuario", Conexion);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@Login", Login);
			da.SelectCommand.Parameters.AddWithValue("@Password", Password);
			da.SelectCommand.Parameters.AddWithValue("@Patron", Patron);
			da.Fill(ds, "UsuarioValido");

		}
		catch (Exception ex)
		{
			ds = null;

		}
		return ds;
	}

	public DataSet AgregarSolicitud(int ID_USUARIO, string ESTADO, string MOTIVO, string TIPO_FALTA, string TIEMPO_ESTIMADO)
		/*, DateTime FECHA_SOLICITUD*/
    {
		try
		{
			da = new SqlDataAdapter("SP_AGREGAR_SOLICITUD", Conexion);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@ID_USUARIO", ID_USUARIO);
            da.SelectCommand.Parameters.AddWithValue("@ESTADO", ESTADO);
            da.SelectCommand.Parameters.AddWithValue("@MOTIVO", MOTIVO);
            da.SelectCommand.Parameters.AddWithValue("@TIPO_FALTA", TIPO_FALTA);
			da.SelectCommand.Parameters.AddWithValue("@TIEMPO_ESTIMADO", TIEMPO_ESTIMADO);
     /*     da.SelectCommand.Parameters.AddWithValue("@FECHA_SOLICITUD", FECHA_SOLICITUD);*/
			da.Fill(ds,"AgregarSolicitud");
        }
		catch (Exception ex) 
		{
			ds = null;
		}
		return ds;
	}

	

	public DataSet ControlAsistencia(int ID_USUARIO,DateTime FECHA_MARCA, DateTime HORA_ENTRADA)
	{
		try
		{
			da = new SqlDataAdapter("SP_CONTROL_ASISTENCIA", Conexion);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@ID_USUARIO",ID_USUARIO);
			da.SelectCommand.Parameters.AddWithValue("@FECHA_MARCA",FECHA_MARCA);
			da.SelectCommand.Parameters.AddWithValue("@HORA_ENTRADA",HORA_ENTRADA);
			da.Fill(ds, "ControlAsistencia");
		}
		catch (Exception ex) 
		{
			ds = null;
		}
		return ds;
	}
	public DataSet ControlAsistenciaSalir(int ID_USUARIO, DateTime FECHA_MARCA, DateTime HORA_SALIDA)
    {
		try 
		{
			da = new SqlDataAdapter("SP_MODIFICAR_ASISTENCIA", Conexion);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@ID_USUARIO",ID_USUARIO);
			da.SelectCommand.Parameters.AddWithValue("@FECHA_MARCA",FECHA_MARCA);
			da.SelectCommand.Parameters.AddWithValue("@HORA_SALIR", HORA_SALIDA);
			da.Fill(ds, "ControlAsistenciaSalir");
		}
		catch (Exception ex) 
		{
			ds = null;
		}
        return ds;
    }
}
