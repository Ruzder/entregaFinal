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
    <title>Responder Checklist</title>
</head>

<body>
    <header class="container-fluid bg-primary d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6"> Contactanos +56 9 3641 7409 </p>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-3 " id="menu">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Zurita & Seguridad</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="indexN.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Responder Checklist</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- imagen principal -->

    <div class="fondo">
        <h1>Zurita & Seguridad</h1>
        <h2>Somos seguridad y bienestar de tus equipos de trabajo</h2>
    </div>
     <a href="${pageContext.request.contextPath}/logout">Salir</a>
    <!-- cuerpo de trabajo  -->
    <h4>Listado de Chequeos de Visitas</h4>
      
      <table class="table table-striped">
  <thead>  
        <tr>
            <th>ID Chequeo</th>
            <th>ID Profesional </th>
            <th>ID Visita</th>
            <th>Estado Cumple</th>
            <th>Comentario</th>
            <th>titulo Profesional</th>
            <th>Lugar Visita</th>
            <th></th>
          
        </tr>
        
   </thead>
   <tbody>     
  <c:forEach var="ch" items="${lista}">
				<tr>
					<th><c:out value="${ch.getIdchequeoEntity()}"></c:out></th>
					<td><c:out value="${ch.getProfesional().getIdPro()}"></c:out></td>	
					<td><c:out value="${ch.getVisitas().getIdvisitaEntity()}"></c:out></td>
					<td><c:out value="${ch.getChequeoestadoEntity()}"></c:out></td>
					<td><c:out value="${ch.getChequeocomEntity()}"></c:out></td>
					<td><c:out value="${ch.getProfesional().getTitPro()}"></c:out></td>
					<td><c:out value="${ch.getVisitas().getVislugarEntity()}"></c:out></td>
								
				</tr>
			</c:forEach>
		</tbody>
	</table>      
       
    <!-- footer  -->

     <jsp:include page="footer.jsp"></jsp:include>


</body>

</html>