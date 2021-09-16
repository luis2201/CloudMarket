<%-- 
    Document   : usuarios
    Created on : 15 sep. 2021, 19:19:57
    Author     : Luis
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <div class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
       <h4>Usuarios Registrados</h4>
      </div>
      <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small text-center">
       <li>
        <a href="usuariosAdd.htm" class="btn btn-success btn-sm">
         <i class="fas fa-plus-circle"></i>
         Agregar Usuario
        </a>
       </li>
      </ul>
     </div>
    </div>
    </div>
    <div class="card-body">
     <table id="tbLista" class="table table-hover table-striped display">
      <thead>
       <tr class="text-center">        
        <th>#</th>
        <th>Nombres</th>
        <th>Usuario</th>
        <th>Contraseña</th>
        <th>Rol</th>        
        <th>Estado</th>
        <th>Acción</th>
       </tr>
      </thead>
      <tbody>
       <c:forEach var="resp" items="${lista}">
        <tr>
        <td></td>
        <td>${resp.nombres}</td>
        <td>${resp.usuario}</td>
        <td>${resp.contrasena}</td>
        <td class="text-center">${resp.rol}</td>        
        <td class="text-center">
         <c:choose>
          <c:when test="${resp.estado==true}">
           <span class="badge bg-success">ACTIVO</span>
          </c:when>
          <c:otherwise>
           <span class="badge bg-danger">INACTIVO</span>
          </c:otherwise>
         </c:choose>         
        </td>
        <td class="text-center">
         <a class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
         <a class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
        </td>
       </tr>
      </c:forEach>
      </tbody>
     </table>
    </div>
   </div>
  </div>

  <!-- JQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Bootstarp -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
  <!-- DataTable -->
  <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>    
  <!-- Site JS -->
  <script src="js/main.js"></script>
 </body>
</html>