<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <!-- <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> -->
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page"  href="${pageContext.request.getContextPath()}/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page"  href="${pageContext.request.getContextPath()}/contacto">Contacto</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Usuario
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/crearClienteUsuario">Crear Cliente</a></li>
             <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/crearProfesionalUsuario">Crear Profesional</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/crearAdministrativoUsuario">Crear Administrativo</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/listadousuarios">Listar Usuarios</a></li>
          </ul>
        </li>
        
		 <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Editar
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/editarAdministrativo">Editar Administrativo</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/editarProfesional">Editar Profesional</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/editarCliente">Editar Cliente</a></li>
		</ul>
        </li>	
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Capacitación
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/crearCapacitacion">Crear Capacitación</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/listarCapacitacion">Listar Capacitación</a></li>
          </ul>
        </li>	
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Pago
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/crearpago">Crear Pago</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/listadopago">Listar Pago</a></li>
          </ul>
        </li>	
					  
		<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Visita
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/responderchecklist">Responder Checklist</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.getContextPath()}/listadovisitas">Listado Visitas</a></li>
          </ul>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>
