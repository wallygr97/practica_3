<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${titulo}</title>
    <style>
        @media screen and (max-width:480px){
            body {
                font-size:80%; // achicamos la fuente en pantallas pequeñas
            }
        }
        .tablaContainer{
            margin: auto;
        }
        table{
            width: 100%;
        }
        th, td {
            text-align: left;
            width: auto;
        }
        a.button {
            background-color: #007bff;
            color: #fff;
            width: 100%;
            margin: 10px 0 ;
            border: none;
            cursor: pointer;
            border-radius: 10%;
        }
        a.button:hover{
            text-decoration: none;
            opacity: 0.8;
            color: whitesmoke;
        }
    </style>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-home.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">
    <div class="container">
        <a class="navbar-brand" href="/">Blog</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/gestionarUsuarios">Registrar usuario
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/listaUsuarios">Lista de Usuarios</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="tablaContainer">
            <h1 class="my-4">Visualizar Usuario</h1>
            <table>
                <tr>
                    <th>Nombre:</th>
                    <td>${usuario.nombre}</td>
                </tr>
                <tr>
                    <th>Nombre de Usuario:</th>
                    <td>${usuario.username}</td>
                </tr>
                <tr>
                    <th>Contrasena:</th>
                    <td>${usuario.password}</td>
                </tr>
                <tr>
                    <th>Permiso:</th>
                    <#if usuario.administrador>
                        <td>Administrador</td>
                    <#elseif usuario.autor>
                        <td>Autor</td>
                    <#else>
                        <td>Ninguno</td>
                    </#if>
                </tr>
                <tr>
                    <td><a href="/editarUsuario/${usuario.username}" class="button">Editar</a></td>
                    <td><a href="/eliminarUsuario/${usuario.username}" class="button">Eliminar</a></td>
                </tr>
            </table>
            <br>
            <br>
        </div>
    </div>
</div>
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>