<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario y contraseña correctos</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<h2>Bienvenido</h2>
<p>
	Entraste en sesion como: <c:out value="${sesion}"></c:out>
 </p>
 <a class="btn btn-primary" href="LogoutServlet">cerrar sesion</a>

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