<jsp:include page="validar.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body style="background-image: url(img/onimer2.jpg);">
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark ">
			<div>
				<a href="user-list.jsp" class="navbar-brand"> ADMINISTRAR
					PRODUCTOS </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listUser"
					class="nav-link">VER PRODUCTOS</a></li>
				<li><a href="<%=request.getContextPath()%>/new"
					class="nav-link">INSERTAR PRODUCTOS</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card" style="background-color: #F2D1D1">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${user != null}">
EDITAR PRODUCTO
</c:if>
						<c:if test="${user == null}">
INSERTAR NUEVO PRODUCTO
</c:if>
					</h2>
				</caption>
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<fieldset class="form-group">
					<label>NOMBRE</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>PRECIO</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>CANTIDAD</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>
				<center>
					<button type="submit" class="btn btn-info">Guardar</button>
				</center>
				</form>
			</div>
		</div>
	</div>
</body>
</html>




<!--  
		<a class="active">Bienvenido ${sessionScope.usuario.nombre}</a>
		<jsp:include page="encabezado.jsp" />
	-->