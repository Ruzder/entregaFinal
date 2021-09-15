<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="shortcut icon"
	href="https://raw.githubusercontent.com/Ruzder/grupal/main/icono.com%20(1).png">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js "
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM "
	crossorigin="anonymous "></script>
<link
	href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css"
	rel="stylesheet" type="text/css">
<title>Crear Administrativo</title>
</head>
<body>
	<header
		class="container-fluid bg-primary d-flex justify-content-center">
		<p class="text-light mb-0 p-2 fs-6">Contactanos +56 9 3641 7409</p>
	</header>
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- imagen principal -->

	<div class="fondo">
		<h1>Zurita & Seguridad</h1>
		<h2>Somos seguridad y bienestar de tus equipos de trabajo</h2>
	</div>
	<!-- cuerpo de trabajo  -->
	<div class="container">
		<div class="contact-box">
			<div class="left1"></div>
			<div class="right">
				<h2>Crear Administrativo</h2>
				<form
					action="${pageContext.request.getContextPath()}/crearAdministrativoUsuario"
					method="post">
					
					<div class="mb-3">
						<label for="run" class="form-label">RUN</label> <input type="number"
							class="form-control" id="runInt" name="runInt">
						<!-- se cambio el type = date por string para el ejercicio -->
					</div>
					<div class="mb-3">
						<label for="nom class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nomTxt" name="nomTxt">
						<!-- se cambio el type = date por string para el ejercicio -->
					</div>
					<div class="mb-3">
						<label for="ape" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apeTxt" name="apeTxt">
					</div>
					<div class="mb-3">
						<label for="fechaNacimiento" class="form-label">Fecha Nacimiento</label> <input
							type="text" class="form-control" id="fecTxt" name="fecTxt">
					</div>
					<div class="mb-3">
						<label for="tipoUsuario" class="form-label">Tipo Usuario</label> <input
							type="number" class="form-control" id="tipInt"
							name="tipInt">
					</div>
					<!-- Datos especificos -->
					
					
					<div class="mb-3">
						<label for="idAdm" class="form-label">Id Admininistrativo</label> <input
							type="number" class="form-control" id="idAdmInt"
							name="idAdmInt">
					</div>
					<div class="mb-3">
						<label for="nomSup" class="form-label">Nombre Superior</label> <input
							type="text" class="form-control" id="nomSupTxt"
							name="nomSupTxt">
					</div>
					<div class="mb-3">
						<label for="area" class="form-label">area</label> <input
							type="text" class="form-control" id="areTxt"
							name="areTxt">
					</div>
					<div class="mb-3">
						<label for="canEmpCliente" class="form-label">experiencia</label> <input
							type="text" class="form-control" id="expAdmTxt"
							name="expAdmTxt">
					</div>
					<div class="mb-3">
						<label for="funcion" class="form-label">Funcion</label> <input
							type="text" class="form-control" id="funTxt"
							name="funTxt">
					</div>
					
					<div class="mb-3">
						<label for="razCliente" class="form-label">Razon Social</label> <input
							type="text" class="form-control" id="razTxt"
							name="razTxt">
					</div>

					
					<button type="submit" class="btn btn-primary">Crear</button>
					<button type="reset" class="btn btn-secondary">Reset</button>
				</form>
			</div>
		</div>
	</div>
	<!-- footer  -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="./js/capacitacion.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>