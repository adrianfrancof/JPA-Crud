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
	<!-- navbar -->
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
	
	<!-- Inicio Contenido -->
	<div class="container mt-5 p-5">
		<div class="p-3">
			<h1>Agregar usuario</h1>
			<c:if test="${mensaje != null ? true : false}">
				<div class="alert alert-secondary alert-dismissible fade show"
					role="alert">${mensaje}
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
			<form action="agregar" method="post">
				<table>
					<tr>
						<td class="p-2"><label for="nombre">Nombre:</label></td>
						<td><input class="form-control" type="text" name="nombre" placeholder="Nombre" /></td>
					</tr>
					<tr>
						<td class="p-2"><label for="clave">Clave:</label></td>
						<td><input class="form-control" type="password" placeholder="Contraseña" name="clave" /></td>
					</tr>
					<tr>
						<td class="p-2"><label for="rut">Rut:</label></td>
						<td><input class="form-control" type="number" placeholder="Rut" name="rut" /></td>
						<td>-</td>
						<td><input class="form-control" type="text" placeholder="DV" step="1" size="1" maxlength="1" name="dv" /></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" class="btn m-2 btn-success" value="Agregar" />
							<a type="button" class="btn m-2 btn-warning" href="/home">Volver</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<!-- footer -->
	<footer
		class="container-fluid text-center bg-dark text-white py-2 fixed-bottom">
		<h1>JSP CRUD</h1>
		<a href="" class="text-white">web site developed by FS-0001 <i class="far fa-registered"></i>
		</a>
	</footer>
</body>
</html>