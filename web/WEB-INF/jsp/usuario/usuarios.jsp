<%-- 
    Document   : usuarios
    Created on : 15 sep. 2021, 19:19:57
    Author     : Luis Pincay
--%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <!-- Cabecera -->
 <head>  
  <jsp:include page="../layout/head.jsp" flush="true" />  
 </head>
 <!-- Fin cabecera -->
 <body>
  <!-- Barra de navegación -->
  <jsp:include page="../layout/nav.jsp" flush="true" />
  <!-- Fin barra de navegación -->

  <!-- Contenido -->
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
       <c:forEach var="dato" items="${lista}">
        <tr>
         <td></td>
         <td><c:out value="${dato.nombres}" /></td>
         <td><c:out value="${dato.usuario}" /></td>
         <td><c:out value="${dato.contrasena}" /></td>
         <td class="text-center"><c:out value="${dato.rol}" /></td>        
         <td class="text-center">
          <c:choose>
           <c:when test="${dato.estado==true}">
            <span class="badge bg-success">ACTIVO</span>
           </c:when>
           <c:otherwise>
            <span class="badge bg-danger">INACTIVO</span>
           </c:otherwise>
          </c:choose>         
         </td>
         <td class="text-center">
          <a  href="usuariosEdit.htm?idusuario=${dato.idusuario}" class="text-primary"><i class="fas fa-edit"></i></a>
          <a href="usuariosDelete.htm?idusuario=${dato.idusuario}" class="text-danger"><i class="fas fa-trash-alt"></i></a>
         </td>
        </tr>
       </c:forEach>
      </tbody>
     </table>
    </div>
   </div>
  </div>
  <!-- Fin contenido -->

  <!-- Pie de página -->
  <jsp:include page="../layout/footer.jsp" flush="true" />  
  <!-- DataTable -->
  <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>    
  <!-- Site JS -->
  <script src="${pageContext.request.contextPath}/js/main.js"></script>
  <!-- Fin Pie de página -->
 </body>
</html>