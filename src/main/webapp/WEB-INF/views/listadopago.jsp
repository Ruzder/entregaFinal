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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="shortcut icon" href="https://raw.githubusercontent.com/Ruzder/grupal/main/icono.com%20(1).png">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js " integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM " crossorigin="anonymous "></script>
    <link href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css"
	rel="stylesheet" type="text/css">
    <title>Listado Pago</title>
</head>

<body>
    <header class="container-fluid bg-primary d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6"> Contactanos +56 9 3641 7409 </p>
    </header>
    
    <jsp:include page="menu.jsp"></jsp:include>
    
    <!-- imagen principal -->

    <div class="fondo">
        <h1>Zurita & Seguridad</h1>
        <h2>Somos seguridad y bienestar de tus equipos de trabajo</h2>
    </div>
    
    <a href="${pageContext.request.contextPath}/logout">Salir</a>
    <!-- cuerpo de trabajo  -->
    <h4>Tabla de Pagos</h4>
    
    
  <table class="table table-striped">    
    <thead>
        <tr>
            <th scope="col">ID Pago</th>
            <th scope="col">ID Administrativo</th>
			<th scope="col">Rut Cliente</th>
			<th scope="col">Razon Social Cliente</th>
			<th scope="col">Fecha Pago</th>
			<th scope="col">Pago Mes</th>
			<th scope="col">Pago Año</th>
			<th scope="col">Pago Monto</th>
			
        </tr>

     </thead>
    <tbody>      
            <c:forEach var="p" items="${lista}">
				<tr>
					<th><c:out value="${p.getIdpagoEntity()}"></c:out></th>
					<th><c:out value="${p.getIdadmEntity()}"></c:out></th>
					<td><c:out value="${p.getCliente().getIdCli()}"></c:out></td>
					<td><c:out value="${p.getCliente().getRazCli()}"></c:out></td>	
					<td><c:out value="${p.getPagofechaEntity()}"></c:out></td>
					<td><c:out value="${p.getPagomesEntity()}"></c:out></td>
					<td><c:out value="${p.getPagoanoEntity()}"></c:out></td>
					<td><c:out value="${p.getPagomontoEntity()}"></c:out></td>	
					
				</tr>
	        </c:forEach>
    </tbody>
  </table>


    <!-- footer  -->
    
    <jsp:include page="footer.jsp"></jsp:include>
  


</body>

</html>