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
                <h4> Formulario de pago</h4>

                <main>
                    <p id="demo"></p>
                    <form action="${pageContext.request.getContextPath()}/crearPago" method="post">
					
					   <!--  Grupo: ID PAGO
					    <div class="mb-3">
						<label for="idpago" class="form-label">Id Pago</label> <input
							type="number" class="form-control" id="idpagoint"
							name="idpagoint">
					    </div>  -->
					
					    <!--  Grupo: ID ADMINISTRATIVO -->
					    <div class="mb-3">
						<label for="idadm" class="form-label">Id Administrativo</label> <input
							type="number" class="form-control" id="idadmint"
							name="idadmint">
					    </div> 
					
                        <!-- Grupo: RUT CLIENTE -->
                        <div class="mb-3">
						<label for="rutCliente" class="form-label">Rut Cliente</label> <input
							type="number" class="form-control" id="rutpagoint"
							name="rutpagoint">
					    </div>
					    
                        <!-- Grupo:PAGO FECHA -->
                        <div class="mb-3">
						<label for="fechapago" class="form-label">Fecha</label> <input type="text"
							class="form-control" id="fechapagoTxt" name="fechapagoTxt">
						<!-- se cambio el type = date por string para el ejercicio -->
					    </div>
					    
                         <!-- Grupo:PAGO MES -->
                         <div class="mb-3">
					     <label for="mespago" class="form-label">Mes</label> <input type="text"
						 class="form-control" id="mespagoTxt" name="mespagoTxt">
						  <!-- se cambio el type = date por string para el ejercicio -->
					     </div>
					     
					      <!-- Grupo:PAGO ANO -->
					      <div class="mb-3">
					     <label for="anopago" class="form-label">Año</label> <input type="text"
						  class="form-control" id="anopagoTxt" name="anopagoTxt">
					      </div>
                         
                         
                          <!-- Grupo: MES -->
                          <!-- <div class="formulario__grupo" id="grupo__mes">
                            <label for="mes" class="formulario__label">MES</label>
                            <div class=>

                                <select class="formulario__input" id="mes" name="mes" required="">
                                    <option value="">- Selecciona un mes -</option>
                                    <option value="1">Enero</option>
                                    <option value="2">Febrero</option>
                                    <option value="3">Marzo</option>
                                    <option value="4">Abril</option>
                                    <option value="5">Mayo</option>
                                    <option value="6">Junio</option>
                                    <option value="7">Julio</option>
                                    <option value="8">Agosto</option>
                                    <option value="9">Septiembre</option>
                                    <option value="10">Octubre</option>
                                    <option value="11">Noviembre</option>
                                    <option value="12">Diciembre</option>
                                    <i class=></i>
                                  </select>
                                <i class=></i>
                            </div>
                            <p class="formulario__input-error">Ingrese un mes del año.</p>
                        </div>
                        <br> -->
                        
                        
                        
                        <!-- "formulario__validacion-estado fas fa-times-circle"-->
                        <!-- "formulario__validacion-estado fas fa-times-circle"-->

                        <!-- Grupo: MONTO -->
                        
                        <div class="mb-3">
		                <label for="pagomonto" class="form-label">Pago Monto</label> <input
						type="number" class="form-control" id="pagomontoint" name="pagomontoint">
					    </div>                      


                        <!-- Grupo: Terminos y Condiciones -->


                      <!--   <div class="formulario__mensaje" id="formulario__mensaje">
                            <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
                        </div> -->

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