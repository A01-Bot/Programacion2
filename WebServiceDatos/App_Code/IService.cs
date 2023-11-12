using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
[ServiceContract]
public interface IService
{
    [OperationContract]
    DataSet ValidarUsuario(string Login, string Password);
    [OperationContract]
    DataSet AgregarSolicitud(int ID_USUARIO, string ESTADO,string MOTIVO,string TIPO_FALTA,string TIEMPO_ESTIMADO);
    [OperationContract]
    DataSet ControlAsistencia(int ID_USUARIO,DateTime FECHA_MARCA, DateTime HORA_ENTRA);
    [OperationContract]
    DataSet ControlAsistenciaSalir(int ID_USUARIO, DateTime FECHA_MARCA, DateTime HORA_SALIDA);
}
