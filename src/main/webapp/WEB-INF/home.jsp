<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.latam.JPAcrud.modelo.Usuario"%>
<%@page import="com.latam.JPAcrud.vo.UsuarioVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="charset=ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.3.0/css/bootstrap.min.css" />
<title>JSP CRUD</title>
</head>
<body>
	<!-- Inicio navbar -->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="/home">JSP CRUD</a>
			<div class="navbar">
				<div class="navbar-nav">
					<form action="handleLogout" class="form-inline" method="POST">
						<a class="nav-item nav-link disabled mr-sm-2" href="#" tabindex="-1" aria-disabled="true">${usuarioConectado}</a> 
							<input type="submit" class="btn btn-outline-danger my-2 my-sm-0" name="btnEnviar" value="logout">
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- Fin navbar -->
	<!-- Inicio Contenido -->
	<div class="p-3">
		<!-- Inicio Mensajes -->
		<c:if test="${mensaje != null ? true : false}">
			<div class="alert alert-secondary alert-dismissible fade show" role="alert">${mensaje}
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>
		<!-- Fin Mensajes -->
		<!-- Boton agregar usuario -->
			<!-- <a href="agregarForm" class="btn m-2 btn-success">Agregar usuario</a> -->
		<div class="container-fluid p-5">
		<!-- Paginacion bootstrap -->
		<ul class="pagination pagination-lg justify-content-center">
			<c:forEach items="${paginas}" var="pagina">
				<li class="page-item ${paginaActual == pagina ? 'disabled' : ''}"><a class="page-link" href="home?p=${pagina}" tabindex="-1">${pagina}</a></li>
			</c:forEach>
		</ul>
		    <form method="POST" action="buscar">
		        <table class="float-right">
		            <tr>
		            	<td><a href="agregarForm" class="btn m-2 btn-success">Agregar Usuario</a></td>
		                <td class="p-2"><label for="imprenta">Buscador:</label></td>
		                <td>
		                	<input class="form-control" type="text" placeholder="Buscador" name="textoBuscado" />
		                </td>
		                <td colspan="2">
		                	<input type="submit" class="btn m-2 btn-primary" value="Buscar" /></td>
		            </tr>
		        </table>
		    </form>
	    </div>
		
		<!-- Inicio Tabla -->
		<div class="container-fluid">
			<table border="1" class="table table-hover">
				<thead class="thead-dark">
					<tr class="text-center">
						<th class="col-2 align-middle" scope="col">IdUsuario</th>
						<th class="col-2 align-middle" scope="col">Nombre</th>
						<th class="col-2 align-middle" scope="col">Clave</th>
						<th class="col-2 align-middle" scope="col">Rut</th>
						<th class="col-2 align-middle" scope="col">Acciones<a href="agregarForm" class="btn m-2 btn-success">Agregar usuario</a></th>
					</tr>
				</thead>
				<tbody class="text-center">
					<c:forEach items="${VO.usuarios}" var="u">
						<tr>
							<td>${u.getIdUsuario()}</td>
							<td>${u.getNombre()}</td>
							<td>${u.getClave()}</td>
							<td>${u.getRut()}-${u.getDv()}</td>
							<td>
								<a href="editarForm?idUsuario=${u.getIdUsuario()}"class="btn btn-primary btnsm"> Editar</a> 
								<a href="eliminar?idUsuario=${u.getIdUsuario()}" class="btn btn-danger btnsm"> Eliminar</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<ul class="pagination pagination-lg justify-content-center">
			<c:forEach items="${paginas}" var="pagina">
				<li class="page-item ${paginaActual == pagina ? 'disabled' : ''}"><a class="page-link" href="home?p=${pagina}" tabindex="-1">${pagina}</a></li>
			</c:forEach>
		</ul>
		<!-- Fin tabla -->
	</div>
	<!-- Fin Contenido -->
	<!-- footer -->
	<footer
		class="container-fluid text-center bg-dark text-white py-2 fixed-bottom">
		<h1>JSP CRUD</h1>
		<a href="" class="text-white">web site developed by FS-0001 <i class="far fa-registered"></i>
		</a>
	</footer>
</body>
</html>