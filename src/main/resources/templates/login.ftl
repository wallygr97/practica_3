<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>${titulo}</title>
    <style>
        html{
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        }
        @media screen and (max-width:480px){
            body {
                font-size:80%; // achicamos la fuente en pantallas pequeñas
            }
        }
        /*Títulos de la página de login*/
        .titulo{
            background-color: #495057;
            text-align: center;
            padding: 10px;
            height: 50%;
            width: 40%;
            margin: auto;
            color:#fff;
        }
        /*Contenido del formulario de login*/
        .loginContainer {
            padding: 50px;
            height: 30%;
            width: 30%;
            margin: auto;
        }
        /*Campos del formulario*/
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        /*Botón de registrar*/
        button {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            margin: 10px 0 ;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            opacity: 0.8;
            color: whitesmoke;
        }
    </style>
</head>
<body>
<div class="titulo">
    <h1>Blog</h1>
    <h3> Iniciar sesión</h3>
</div>
<form action="/procesarUsuario" method="post">
    <div class="loginContainer">
        <label><b>Nombre de usuario</b></label>
        <input type="text" name="username" placeholder="Username" required>

        <label><b>Contraseña</b></label>
        <input type="password" name="password" placeholder="Password"  required>

        <button type="submit">Entrar</button>
        <label>
            <input type="checkbox" name="recordar"> Recordarme
        </label>//no me quiere subir el gitgit
    </div>
</form>
</body>
</html>