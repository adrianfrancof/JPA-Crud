<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.latam.JPAcrud.modelo.Usuario"%>
<%@page import="com.latam.JPAcrud.vo.UsuarioVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		<h2>Ha ocurrido un error</h2>
		<h3>
			<a href="home">volver al inicio</a>
		</h3>
	</div>
	<!-- footer -->
	<footer
		class="container-fluid text-center bg-dark text-white py-4 fixed-bottom">
		<h1>JSP CRUD</h1>
		<a href="" class="text-white">web site developed by FS-0001 <i class="far fa-registered"></i>
		</a>
	</footer>
</body>
</html>