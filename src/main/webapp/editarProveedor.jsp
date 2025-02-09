<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Proveedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Editar Proveedor</h1>
        <form action="ControladorProveedor" method="post">
            <input type="hidden" name="action" value="actualizar">
            <input type="hidden" name="idproveedor" value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getIdproveedor() : "" %>">
            
            <div class="mb-3">
                <label for="nomproveedor" class="form-label">Nombre del Proveedor</label>
                <input type="text" class="form-control" id="nomproveedor" name="nomproveedor" 
                    value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getNomproveedor() : "" %>" required>
            </div>
            
            <div class="mb-3">
                <label for="rucproveedor" class="form-label">RUC</label>
                <input type="text" class="form-control" id="rucproveedor" name="rucproveedor" 
                    value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getRucproveedor() : "" %>" required>
            </div>

            <div class="mb-3">
                <label for="rsocialproveedor" class="form-label">Razón Social</label>
                <input type="text" class="form-control" id="rsocialproveedor" name="rsocialproveedor" 
                    value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getRsocialproveedor() : "" %>" required>
            </div>
            
            <div class="mb-3">
                <label for="emailproveedor" class="form-label">Email</label>
                <input type="email" class="form-control" id="emailproveedor" name="emailproveedor" 
                    value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getEmailproveedor() : "" %>" required>
            </div>

            <div class="mb-3">
                <label for="feingproveedor" class="form-label">Fecha de Ingreso</label>
                <input type="text" class="form-control" id="feingproveedor" name="feingproveedor" 
                    value="<%= (request.getAttribute("proveedor") != null) ? ((model.TblProveedor) request.getAttribute("proveedor")).getFeingproveedor() : "" %>" required>
            </div>

            <button type="submit" class="btn btn-primary">Actualizar</button>
            <a href="listarProveedor.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script>
        flatpickr("#feingproveedor", {
            dateFormat: "Y-m-d",
            defaultDate: document.getElementById('feingproveedor').value
        });
    </script>
</body>
</html>
