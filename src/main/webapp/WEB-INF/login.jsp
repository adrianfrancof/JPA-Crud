<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.latam.JPAcrud.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="charset=UTF-8">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.3.0/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/estilos.css" rel="stylesheet">
	
<title>JSP CRUD</title>
</head>
<body>
	<%-- <h1>Bienvenido</h1>
	<h3>${mensaje}</h3>
	<br> --%>
	<%-- <form action="handleLogin" method="POST" class="p-3">
		<h1>Iniciar sesión</h1>
		<c:if test="${mensaje != null ? true : false}">
			<div class="alert alert-secondary alert-dismissible fade show"
				role="alert">${mensaje}
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>
		
		<div class="form-row align-items-center">
			<div class="col-auto">
				<label class="sr-only" for="nombre">Nombre</label>
				<input type="text" class="form-control mb-2" id="nombre" name="nombre" placeholder="Nombre de usuario">
			</div>
			<div class="col-auto">
				<label class="sr-only" for="clave">Contraseña</label>
				<input type="password" class="form-control mb-2" id="clave" name="clave" placeholder="Contraseña">
			</div>
			<div class="col-auto">
				<button type="submit" class="btn btn-primary mb-2">Enviar</button>
			</div>
		</div>
	</form> --%>
	
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<c:if test="${mensaje != null ? true : false}">
				<div class="alert alert-secondary alert-dismissible fade show" role="alert">${mensaje}
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
			<div class="fadeIn first">
				<img src="./img/login.svg" id="icon" alt="User Icon" />
			</div>
	
			<form action="handleLogin" method="POST">
				<input type="text" id="login" class="fadeIn second" name="nombre" placeholder="login">
				<input type="password" id="password" class="fadeIn third" name="clave" placeholder="password">
				<input type="submit" class="fadeIn fourth" value="Log In">
			</form>
	
			<div id="formFooter">
				<a class="underlineHover" href="#">Olvido la clave?</a>
			</div>
	
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>