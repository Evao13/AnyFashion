<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio de Sesión</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<body class="principal1">
	<div class="principal">
		<form action="usuario" method="post">
		<div style="text-align:center;"><h2><strong>Login</strong></h2></div>
			<input type="hidden" name="tipo" value="iniciarSesion" />
			<table class="table table-striped">
				<tr>
					<td>Usuario</td>
					<td><input type="text" name="nombre" class="form-control" /></td>
				</tr>
				<tr>
					<td>Clave</td>
					<td><input type="password" name="clave" class="form-control" /></td>
				</tr>
				<tr style="text-align:center;">
					<td colspan="2"><input type="submit" value="Iniciar sesión"
						class="btn btn-primary" /></td>
				</tr>
			</table>
			<div>
				<p>
					<%
					String resultado = (String) request.getAttribute("mensaje");
					String mensaje = "";
					if (resultado != null) {
						mensaje = resultado;
					}
					%>
					<%=mensaje%>
				</p>
			</div>
		</form>
	</div>
	
	<a href ="index.html">volver</a>

</body>
</html>

<style>
.principal {
	background: #FFC3C3;
	margin-top: 220px;
	width:450px;
	height:290px;
	padding: 25px;
	border-radius: 15px;
}

.principal1 {
	background-image:url("https://i.pinimg.com/736x/a8/50/b6/a850b647dc8f97965aed9a656019cc49--paper-umbrellas-umbrellas-parasols.jpg");
	display: flex;
	justify-content: center;
	align-items: center;
}

</style>