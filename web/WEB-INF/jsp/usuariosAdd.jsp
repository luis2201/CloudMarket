<%-- 
    Document   : usuariosAdd
    Created on : 15 sep. 2021, 23:13:41
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Cloud Market | Software de Punto de Venta</title>
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  <!-- DataTable -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css"/>  
  <!-- FontAwesome -->
  <link href="FontAwesome/css/all.css" rel="stylesheet">
  <!-- Style Site -->
  <link rel="stylesheet" href="css/style.css"/>
 </head>

 <body>
  <header>
   <div class="px-3 py-2 bg-dark text-white" style="font-size: 12px;">
    <div class="container">
     <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <a href="index.htm" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
       <i class="fas fa-copyright fa-3x bi me-2"></i>
      </a>
      <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small text-center">
       <li>
        <a href="index.htm" class="nav-link text-white">
         <i class="fas fa-home fa-2x d-block"></i>
         Home
        </a>
       </li>
       <li>
        <a href="usuarios.htm" class="nav-link text-white">
         <i class="fas fa-users-cog fa-2x d-block"></i>
         Usuarios
        </a>
       </li>
       <li>
        <a href="#" class="nav-link text-white">
         <i class="fas fa-user-shield fa-2x d-block"></i>
         Permisos
        </a>
       </li>
       <li>
        <a href="#" class="nav-link text-white">
         <i class="fas fa-cog fa-2x d-block"></i>
         Configuración
        </a>
       </li>
       <li>
        <a href="#" class="nav-link text-white">
         <i class="fas fa-sign-out-alt fa-2x d-block"></i>
         Salir
        </a>
       </li>
      </ul>
     </div>
    </div>
   </div>
  </header>

  <div class="container">
   <div class="card col-lg-auto border-primary mt-4">

    <div class="card-header bg-primary text-white">     
     <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <h4>Registro de Usuario</h4>
     </div>
    </div>
   </div>
   <div class="card-body">
    <div class="card border-info col-6" style="margin: auto;">
     <div class="card-header bg-info nav justify-content-end">
      <a class="btn btn-close btn-close-white nav-item" href="usuarios.htm" style="width: 0.1em;"></a>
     </div>
     <div class="card-body">
      <form id="frmDatos" method="POST">
       <div class="row mb-3">
        <div class="col-12">
         <label for="nombres" class="form-label">Apellidos y Nombres</label>
         <input type="text" id="nombres" name="nombres" class="form-control">
        </div>
       </div>
       <div class="row mb-3">
        <div class="col-6">
         <label for="usuario" class="form-label">Usuario</label>
         <input type="text" id="usuario" name="usuario" class="form-control">
        </div>
        <div class="col-6">
         <label for="rol" class="form-label">Contraseña</label>
         <select id="rol" name="rol" class="form-select">
          <option value="">-- Seleccione Rol --</option>
          <option value="1">ADMINISTRADOR</option>
          <option value="2">BODEGA</option>
          <option value="3">CAJA</option>
         </select>
        </div>
       </div>
       <div class="row mb-3">
        <div class="col-6 d-grid">
         <button type="submit" class="btn btn-sm btn-primary">Guardar</button>
        </div>
        <div class="col-6 d-grid">
         <button type="button" id="btnCancelar" class="btn btn-sm btn-secondary">Cancelar</button>
        </div>
      </form>
     </div>
    </div>
   </div>
  </div>
 </div>

 <!-- JQuery -->
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- Bootstarp -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
 <!-- Site JS -->
 <script src="js/usuarios.js"></script>
</body>
</html>