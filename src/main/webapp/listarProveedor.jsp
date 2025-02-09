<%
    if (session == null || session.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <%@ page import="java.util.*"%>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Listado de Proveedores</h1>
        <div class="text-end mb-3">
            <a href="agregarProveedor.jsp" class="btn btn-success">Agregar Proveedor</a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>RUC</th>
                    <th>Razón Social</th>
                    <th>Email</th>
                    <th>Fecha de Ingreso</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% 
                List<model.TblProveedor> proveedores = (List<model.TblProveedor>) request.getAttribute("listado");
                if (proveedores != null) {
                    for (model.TblProveedor proveedor : proveedores) {
                %>
                <tr>
                    <td><%= proveedor.getIdproveedor() %></td>
                    <td><%= proveedor.getNomproveedor() %></td>
                    <td><%= proveedor.getRucproveedor() %></td>
                    <td><%= proveedor.getRsocialproveedor() %></td>
                    <td><%= proveedor.getEmailproveedor() %></td>
                    <td><%= proveedor.getFeingproveedor() %></td>
                    <td>
                        <a href="ControladorProveedor?action=editar&idproveedor=<%= proveedor.getIdproveedor() %>" class="btn btn-warning btn-sm">Editar</a>
                        <a href="ControladorProveedor?action=eliminar&idproveedor=<%= proveedor.getIdproveedor() %>" class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de eliminar este proveedor?');">Eliminar</a>
                    </td>
                </tr>
                <% 
                    }
                } else {
                %>
                <tr>
                    <td colspan="7" class="text-center">No hay proveedores registrados</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
