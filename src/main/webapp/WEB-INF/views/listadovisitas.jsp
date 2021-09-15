<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js " integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM " crossorigin="anonymous "></script>
    <link rel="shortcut icon" href="https://raw.githubusercontent.com/Ruzder/grupal/main/icono.com%20(1).png">
    <link href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css"
	rel="stylesheet" type="text/css">
    <title>Listado Visitas</title>
</head>

<body>
    <header class="container-fluid bg-primary d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6"> Contactanos +56 9 3641 7409 </p>
    </header>
    <jsp:include page="menu.jsp"></jsp:include>

    <div class="fondo">
        <h1>Zurita & Seguridad</h1>
        <h2>Somos seguridad y bienestar de tus equipos de trabajo</h2>
    </div>
    
     <a href="${pageContext.request.contextPath}/logout">Salir</a>
    <!-- cuerpo de trabajo  -->
    <h4>Listado Visitas</h4>
    
    
  <table class="table table-striped">
  <thead>  
        <tr>
            <th>ID Visita</th>
            <th>ID Profesional</th>
            <th>Titulo Profesional </th>
            <th>Fecha </th>
            <th>Hora </th>
            <th>Lugar</th>
            <th>Rut Cliente </th>
            <th>Razon social </th>
            
        </tr>
        
   </thead>
   <tbody>     
  <c:forEach var="v" items="${lista}">
				<tr>
					<th><c:out value="${v.getIdvisitaEntity()}"></c:out></th>
					<td><c:out value="${v.getProfesional().getIdPro()}"></c:out></td>
				    <td><c:out value="${v.getProfesional().getTitPro()}"></c:out></td>	
					<td><c:out value="${v.getVisfechaEntity()}"></c:out></td>
					<td><c:out value="${v.getVishoraEntity()}"></c:out></td>
					<td><c:out value="${v.getVislugarEntity()}"></c:out></td>
					<td><c:out value="${v.getCliente().getIdCli()}"></c:out></td>		
					<td><c:out value="${v.getCliente().getRazCli()}"></c:out></td>	
						
				</tr>
			</c:forEach>
		</tbody>
	</table>      
       
 <!-- footer  -->
    
    <jsp:include page="footer.jsp"></jsp:include>
  

</body>

</html>