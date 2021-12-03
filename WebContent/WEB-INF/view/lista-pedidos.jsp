<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UFT-8">
<title>Lista de pedidos</title>
</head>
<body>
	<div class="navbar navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href='lista'>
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
	
	<div class="container">
		<h1 class="py-4">Lista pedidos</h1>
	</div>
	<!-- 
	OBEJTIVO A MOSTRAR EN LA PANTALLA lista-pedidos !!
	Deberá aparecer una tabla que muestre los datos
de la vista ordenados por fecha de forma descendente.
RESTO DE REQUISITOS PARA EL CRUD
Agregar un pedido nuevo de un cliente concreto
Modificar un pedido de un cliente
Eliminar un pedido de un cliente -->

	<div class="container">
			<table class="table table-success" >
			 <thead class="thead-dark">
				<tr>
					<th scope="col"><b>idPedido</b></th>
					<th scope="col"><b>numPedido</b></th>
					<th scope="col"><b>fecha</b></th>
					<th scope="col"><b>Importe</b></th>
					<th scope="col"><b>Descuento</b></th>
					<th scope="col"><b>idCliente</b></th>

				</tr>
			 </thead>
			 <tbody>
			  <c:forEach var="PedidosTemp" items="${pedidos}">
				
				<!-- Link para actualizar -->
				<c:url var="linkActualizar" value="/Pedidos/muestraFormularioActualizar">
					<c:param name="idPedido" value="${PedidosTemp.idPedido}"/>
				</c:url>
				
				<!-- Link para eliminar-->
				<c:url var="linkEliminar" value="/Pedidos/eliminar">
					<c:param name="idPedido" value="${PedidosTemp.idPedido	}"/>
				</c:url>
				
				<tr>
					<td>${PedidosTemp.idPedido}</td>
					<td>${PedidosTemp.numpedido}</td>
					<td>${PedidosTemp.fecha}</td>
					<td>${PedidosTemp.importe}</td>
					<td>${PedidosTemp.descuento}</td>
					<td>${PedidosTemp.idCliente}</td>
					<td><a href="${linkActualizar}"><input class="btn btn-secondary btn-sm" type="button" value="Modificar"/></a></td>
					<td><a href="${linkEliminar}"><input class="btn btn-secondary btn-sm" type="button" value="Eliminar"
					onclick="if(!(confirm('Vas a eliminar un registro. ¿Estas seguro?'))) return false"/></a></td>
				</tr>
			  </c:forEach>	
			 </tbody>
			</table>
			<br>
		
		
		<center class="pb-5">
			<input class="btn btn-success" type="button" value="Agregar Pedidos" onclick="window.location.href='muestraFormularioAgregar'; return false;"/>
			<input class="btn btn-success" type="button" value="Atrás" onclick="window.location.href='lista'; return false;"/>
		</center>
 	
 	
 	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>