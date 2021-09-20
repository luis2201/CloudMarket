<%-- 
    Document   : usuariosAdd
    Created on : 15 sep. 2021, 23:13:41
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
   <div class="card-dek col-lg-auto mt-4">
    <div class="card-header bg-primary text-white">     
     <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <h4>Registro de Usuario</h4>
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
          <label for="idrol" class="form-label">Rol de Usuario</label>
          <select id="idrol" name="idrol" class="form-select">
           <option value="">-- Seleccione Rol --</option>
           <c:forEach var="dato" items="${listaRoles}">
            <option value="${dato.idrol}">${dato.rol}</option>
           </c:forEach>
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
        </div>        
       </form>       
      </div>
     </div>
    </div>
   </div>
  </div>
  <!-- Fin contenido -->

  <!-- Pie de página -->
  <jsp:include page="../layout/footer.jsp" flush="true" />    
  <!-- Site JS -->
  <script src="${pageContext.request.contextPath}/js/usuarios.js"></script>
  <!-- Fin Pie de página --> 
 </body>
</html>