<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="proyecto_solicitudes.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>Login Page</title>
    <style>
        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }
        .form {
            position: relative;
            background: #ffffff;
            max-width: 250px;
            margin: 0 auto 100px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 14px 28px rgb(0, 0, 0, 0.30), 0 10px 10px rgb(0, 0, 0, 0.22);
            border-radius: 10px;
        }
        .form input {
            font-family: sans-serif;
            outline: 0;
            background: #c9c7c7;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form button {
            font-family: sans-serif;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: .1em;
            outline: 0;
            background: #333;
            width: 100%;
            border: 0;
            margin: 0px 0px 8px;
            padding: 15px;
            color: #FFFFFF;
            border-radius: 20px;
        }
        .form button:hover {
            background: black;
        }
        body {
            background: #5d3f79;
            font-family: sans-serif;
        }
        #ap1 {
            border-radius: 20px;
        }
        .form img {
            float: none;
            text-align: center;
            width: 50px;
            text-align: center;
            padding: 15px;
        }
        .form h1 {
            font-weight: bold;
            color: rgb(27, 24, 24);
            font-size: 25px;
            font-family: sans-serif;
            padding-bottom: 0 50px;
        }
        a {
            color: #333;
            font-size: 14px;
            text-decoration: none;
            margin: 15px 0;
        }
        .form p {
            padding-top: 0px;
            color: rgb(124, 124, 124);
        }
        @media (max-width: 600px) {
            .form {
                float: none;
                text-align: center;
                align-content: center;
            }
        }
    </style>
</head>
<body>
    <div class="body">
        <div class="login-page">
            <div class="form">
                <form runat="server">
                    <img src="https://res.cloudinary.com/drda5zneo/image/upload/v1568110985/graphic_px6ihs.png" alt="Logo">
                    <h1>Bienvenido</h1>
                    <p>Ingresa tus credenciales para entrar</p>
                    <asp:TextBox ID="Txt_Usuario" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password"></asp:TextBox>

                    <br />
                    <asp:Button ID="btnEntrar" runat="server" OnClick="Button1_Click1" Text="Entrar" BackColor="Black" BorderColor="Black" ForeColor="White" />

                    <br />

                    <a href="#">Olvidaste la contraseña?</a>
                    <br />
                    <asp:Label ID="LbMensaje" runat="server" Text="_______"></asp:Label>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
