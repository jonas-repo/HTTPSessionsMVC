<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Http Sessions</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>


	<h2>Inicio de sesion</h2>
	<c:if test="${UserLogin}">
		<div class="alert alert-danger" role="alert">
			informacion de usuario o contraseña no valida!!
		</div>
	</c:if>

	<form method="post" action="LoginServlet" class="col-md-6">
		<p>
			<label for="txtUser" class="control-label">Usuario</label> <input
				type="text" id="txtUser" name="txtUser" class="form-control"
				required>
		</p>
		<p>
			<label for="txtPass" class="control-label">Contraseña</label> <input
				type="password" id="txtPass" name="txtPass" class="form-control"
				required>
		</p>
		<br> <input type="submit" class="btn btn-info"
			value="Iniciar sesion">
	</form>


	<script type="text/javascript" src="js/jQuery3.4.1.js">
		
	</script>
	<script type="text/javascript" src="js/popper.min.js">
		
	</script>
	<script type="text/javascript" src="js/tooltip.min.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>
</body>
</html>