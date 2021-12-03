<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UFT-8">
	<title>Vista Clientes</title>
	
	<!-- enlaces -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" sizes="32x32"><!-- 32x32 pixeles -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>
		<div class="navbar navbar-dark bg-dark">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">
		      <img src="${pageContext.request.contextPath}/resources/images/logos-gratis-489318.png" alt="" width="120" height="60" class="d-inline-block align-text-top mx-5">
		    </a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" href="#">Home</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">Link</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">Otro Link</a>
		        </li>
		      </ul>
		      
		    </div>
		  </div>
		</div>
		<!-- fin de navbar -->
		
		<div id="carouselExampleCaptions" class="carousel slide mb-5" data-bs-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="https://casafarina.com.ar/wp-content/uploads/2013/06/fondo-negro-slider.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h1>Bienvenido al proyecto</h1>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="https://casafarina.com.ar/wp-content/uploads/2013/06/fondo-negro-slider.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h1>Bienvenido al proyecto</h1>
		      </div>
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		<!-- fin de carrousel -->
		
		<div class="container">
			<table class="table table-success" >
			 <thead class="thead-dark">
				<tr>
					<th scope="col"><b>Nombre</b></th>
					<th scope="col"><b>Apellido</b></th>
					<th scope="col"><b>Email</b></th>
					<th></th>
					<th></th>
				</tr>
			 </thead>
			 <tbody>
				<c:forEach var="clienteTemp" items="${clientes}">
				
				<!-- Link para actualizar -->
				<c:url var="linkActualizar" value="/cliente/muestraFormularioActualizar">
					<c:param name="clienteId" value="${clienteTemp.id}"/>
				</c:url>
				
				<!-- Link para eliminar-->
				<c:url var="linkEliminar" value="/cliente/eliminar">
					<c:param name="clienteId" value="${clienteTemp.id}"/>
				</c:url>
				
				<tr>
					<td>${clienteTemp.nombre}</td>
					<td>${clienteTemp.apellido}</td>
					<td>${clienteTemp.email}</td>
					<td><a href="${linkActualizar}"><input class="btn btn-secondary btn-sm" type="button" value="Modificar"/></a></td>
					<td><a href="${linkEliminar}"><input class="btn btn-secondary btn-sm" type="button" value="Eliminar"
					onclick="if(!(confirm('Vas a eliminar un registro. ¿Estas seguro?'))) return false"/></a></td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
			<br>
		
		
		<center class="pb-5">
			<input class="btn btn-success" type="button" value="Agregar cliente" onclick="window.location.href='muestraFormularioAgregar'; return false;"/>
			<input class="btn btn-success" type="button" value="Pedidos" onclick="window.location.href='pedidos'; return false;"/>
		</center>
		</div>
		<!-- fin de contenido principal -->
		
		<footer >
		   <div class="container-footer-all ">  
			  <div class="container-body">  
		          <div class="columna1">
				  <h2>Mas información de la compañía</h2>
				  <p>hola que tal, no se que poner pero esto ya vale yo creo. asd asdqwdqwdq dqw dqw dqwd q dqwdqwd qwd wqdqwd qwd</p>
				  </div>  
			      <div class="columna2">
				     <h2>Redes Sociales</h2>
				     <div class="esrow">
				         <a href="#"><img style="width: 35px; height: 35px;" src="${pageContext.request.contextPath}/resources/images/facebook.png"></a> 
						 <label style="margin-top: 10px; margin-left: 20px; color: #C7C7C7;">Siguenos en Facebook</label>
					 </div>
				     <div class="esrow">
				          <a href="#"><img style="width: 35px; height: 35px;" src="${pageContext.request.contextPath}/resources/images/gorjeo.png"></a> 
						 <label style="margin-top: 10px; margin-left: 20px; color: #C7C7C7;">Siguenos en Twitter</label>
					 </div>
					 <div class="esrow">
				          <a href="#"><img style="width: 35px; height: 35px;" src="${pageContext.request.contextPath}/resources/images/instagram.png"></a> 
						 <label style="margin-top: 10px; margin-left: 20px; color: #C7C7C7;">Siguenos en Instagram</label>
					 </div>
					 <div class="esrow">
				          <a href="#"><img style="width: 35px; height: 35px;" src="${pageContext.request.contextPath}/resources/images/youtube.png"></a> 
						 <label style="margin-top: 10px; margin-left: 20px; color: #C7C7C7;">Siguenos en Google Plus</label>
					 </div>
					 <div class="esrow">
				          <a href="#"><img style="width: 35px; height: 35px;" src="${pageContext.request.contextPath}/resources/images/youtube.png"></a> 
						 <label style="margin-top: 10px; margin-left: 20px; color: #C7C7C7;">Siguenos en Pinterest</label>
					 </div>
				  </div>  
				  
			      <div class="columna3">
				      <h2>Información Contactos</h2>
					  <div class="row2">
					      <img src="${pageContext.request.contextPath}/resources/images/casita.JPG"> 
				          <label>
						  Madrid,
						  España
						  Albufera
				          Centro Cultural Salmantino
						  </label>
					  </div>  
					  <div class="row2">
					      <img src="${pageContext.request.contextPath}/resources/images/telefono.JPG"> 
				          <label>+34 653212345</label>
					  </div>  
				      <div class="row2">
					      <img src="${pageContext.request.contextPath}/resources/images/email.JPG"> 
				          <label>colegio@gmail.com</label>
					  </div>  
				  
				  </div>  
				</div>
	        </div>           
			
			<div style="width: 100%;background: #101010;" class="container-footer">
			  <div style="max-width: 1200px; display: flex; margin: auto; justify-content: space-between; padding: 20px;" class="esfooter">
		       	   <div class="copyright">
		             <p>Copyright ©2021 Todos los derechos reservados | <a href="salmantino.com">salmantino.com</a></p>
			       </div>
			       <div class="information">
				       <a href="#">Política de Privacidad</a>|
				       <a href="#">Términos y Condiciones</a>|
	                   <a href="#">Aviso Legal</a>|
	                   <a href="#">Quienes somos</a>|
		               <a href="#">Contactar</a>
				   </div>
		       </div>
			 </div>
	   </footer>    
	   
	   
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
</body>
</html>