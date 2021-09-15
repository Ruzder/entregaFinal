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
    <link
	href="${pageContext.request.getContextPath()}/resources/css/estiloNEW.css"
	rel="stylesheet" type="text/css">
    <title>Crear pago</title>
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

    <!-- cuerpo de trabajo  -->
    <div class="container">
        <div class="contact-box">
            <div class="left"></div>
            <div class="right">
                <h4> Crear Visita</h4>

                <main>
                    <p id="demo"></p>
                    <form action="${pageContext.request.getContextPath()}/crearVisita" method="post">
					
					  <!--  <!--  Grupo: ID PAGO -->
					    <!-- <div class="mb-3">
						<label for="idpago" class="form-label">Id Visita</label> <input
							type="number" class="form-control" id="idvisitaint"
							name="idvisitaint">
					    </div>   -->
					
					
                        <!-- Grupo: RUT CLIENTE -->
                        <div class="mb-3">
						<label for="rutCliente" class="form-label">Rut Cliente</label> <input
							type="number" class="form-control" id="rutvisitaint"
							name="rutvisitaint">
					    </div>
					    
                        <!-- Grupo:FECHA VISITA-->
                        <div class="mb-3">
						<label for="fechavisita" class="form-label">Fecha</label> <input type="text"
							class="form-control" id="fechavisitaTxt" name="fechavisitaTxt">
						<!-- se cambio el type = date por string para el ejercicio -->
					    </div>
					    
                         <!-- Grupo:HORA VISITA -->
                         <div class="mb-3">
					     <label for="horavisita" class="form-label">Hora Visita</label> <input type="text"
						 class="form-control" id="horavisitaTxt" name="horavisitaTxt">
						  <!-- se cambio el type = date por string para el ejercicio -->
					     </div>
					     
					      <!-- Grupo:LUGAR VISITA -->
					      <div class="mb-3">
					     <label for="lugarvisita" class="form-label">Lugar Visita</label> <input type="text"
						  class="form-control" id="lugarvisitaTxt" name="lugarvisitaTxt">
					      </div>
                         
                          <!-- Grupo: ID PROFESIONAL -->
                        <div class="mb-3">
						<label for="idpro" class="form-label">Id Profesional</label> <input
							type="number" class="form-control" id="idprofesionalint"
							name="idprofesionalint">
					    </div>
                        
                        

                        <button type="submit" class="btn btn-primary">Crear</button>
                        
					    <button type="reset" class="btn btn-secondary">Reset</button>
                    </form>
                </main>

            </div>
        </div>
    </div>





    <!-- footer  -->
 
            
            <jsp:include page="footer.jsp"></jsp:include>
        <!-- </div>

        <!-- Copyright
        <div class="text-center p-3 fs-5 px-3 text-dark ">
            © 2021 Copyright:
            <p class="text-dark fs-5">Zurita & Seguridad. Todos Los Derechos Reservados 2021</p>
        </div>
        Copyright
    </footer>
    <script src="js/elDelicioso.js"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script> --> -->


</body>

</html>