package cl.awakalab.evaluacionModulo5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.evaluacionModulo5.entity.Cliente;
import cl.awakelab.evaluacionModulo5.entity.Pago;
import cl.awakelab.evaluacionModulo5.entity.Profesional;
import cl.awakelab.evaluacionModulo5.entity.Visitas;
import cl.awakelab.evaluacionModulo5.service.VisitasServiceIMPL;



@Controller
public class VisitasController {
	@Autowired
	private VisitasServiceIMPL vs; // vs = visitas service

	@RequestMapping(value="/listadovisitas", method = RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Visitas> lista = vs.readAll();
		ModelAndView mv = new ModelAndView("listadovisitas");
		mv.addObject("lista", lista);
		return mv;
	}
	
	@RequestMapping(value = "/crearVisita", method = RequestMethod.GET)
	public String crearVisitaVer(Model model) {
		
		//Capacitacion c = cs.readOne(1); // llama al rut cliente para hacer un comparacion tiene que ser igual
		//model.addAttribute("c", c);
		return "crearVisita";
	}
	
	
	  @RequestMapping(value="/crearVisita", method=RequestMethod.POST) 
	 public String crearVisitaGuardar(Model model,
	 @RequestParam("rutvisitaint") int rutvisitaint,@RequestParam("fechavisitaTxt") String fechavisitaTxt, 
	 @RequestParam("horavisitaTxt") String horavisitaTxt,@RequestParam("lugarvisitaTxt") String lugarvisitaTxt, 
	 @RequestParam("idprofesionalint") int idprofesionalint) {
	  
	  Visitas v = new Visitas(); // lee los parametros para luego editar
	 
	  Cliente c = new Cliente();
	  
	  c.setIdCli(rutvisitaint);
	  v.setCliente(c);
	  v.setVisfechaEntity(fechavisitaTxt);
	  v.setVishoraEntity(horavisitaTxt);
	  v.setVislugarEntity(lugarvisitaTxt);
	  
	  Profesional p = new Profesional();
	  // asigna id profesional  que ingreso por pantalla al constructor profesional
	  p.setIdPro(idprofesionalint);
   	  //guardo en visitas el id que se ingreso en v
	  v.setProfesional(p);
	
	  vs.create(v);
	  
	  
	  return "redirect:/listadovisitas"; }
	 
      }
	

