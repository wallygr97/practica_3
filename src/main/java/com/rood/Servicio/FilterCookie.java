package com.rood.Servicio;

import com.rood.clases.Usuario;

import static spark.Spark.*;//importacion estatica.. nos da acceso a todos los metodos post, get,
// Dentro del constructor, el método get () se usa para registrar una Ruta que escucha las solicitudes GET en / usuarios.

public class FilterCookie {
    public void aplicarFiltros(){


        after((request, response) -> {
            response.header("foo", "set by after filter");
        });

        afterAfter((request, response) -> {
            response.header("foo", "set by afterAfter filter");
        });

        before("/gestionarUsuarios", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || !logUser.isAdministrador()) {
                halt(401, "Error: Necesitas permiso para acceder a este lugar");
            }
        });

        before("/listaUsuarios", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || !logUser.isAdministrador()) {
                halt(401, "Error: --Necesitas permiso para acceder a este lugar!");
            }
        });

        before("/visualizarUsuario/*", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || !logUser.isAdministrador()) {
                halt(401, "Error: Necesitas permiso para acceder a este lugar!");
            }
        });

        before("/editarUsuario/*", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || !logUser.isAdministrador()) {
                halt(401, "No hay permiso para acceder a este lugar!");
            }
        });

        before("/eliminarUsuario/*", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || !logUser.isAdministrador()) {
                halt(401, "No tienes permiso, necesitas permiso para acceder a este lugar!");
            }
        });

        before("/publicarArticulo", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || (!logUser.isAdministrador() && !logUser.isAutor())) {
                halt(401, "Error:No tienes permiso, necesitas permiso para acceder a este lugar!");
            }
        });


        after("/", (request, response) -> {
            // ... check if authenticated
            Usuario logUser = request.session(true).attribute("usuario");
            if (logUser == null || (!logUser.isAdministrador() && !logUser.isAutor())) {
                response.redirect("/iniciarSesion");
            }
        });
    }
}
