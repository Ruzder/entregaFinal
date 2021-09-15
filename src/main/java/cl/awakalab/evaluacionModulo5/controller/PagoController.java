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
import cl.awakelab.evaluacionModulo5.service.PagoServiceIMPL;

@Controller
public class PagoController {

	
	@Autowired
	private PagoServiceIMPL ps; // ps = pago service
	@Autowired
	
	

	
	@RequestMapping(value="/listadopago", method = RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Pago> lista = ps.readAll();
		ModelAndView mv = new ModelAndView("listadopago");
		mv.addObject("lista", lista);
		return mv;
	}
	
	@RequestMapping(value = "/crearPago", method = RequestMethod.GET)
	public String crearPagoVer(Model model) {
		
		//Capacitacion c = cs.readOne(1); // llama al rut cliente para hacer un comparacion tiene que ser igual
		//model.addAttribute("c", c);
		return "crearPago";
	}
	
	
	  @RequestMapping(value="/crearPago", method=RequestMethod.POST) public String
	  crearPagoGuardar(Model model,@RequestParam("idadmint") int idadmint,
	 @RequestParam("rutpagoint") int rutpagoint,@RequestParam("fechapagoTxt") String fechapagoTxt, 
	 @RequestParam("mespagoTxt") String mespagoTxt,@RequestParam("anopagoTxt") String anopagoTxt, 
	 @RequestParam("pagomontoint") int pagomontoint) {
	  
	  Pago p = new Pago(); // lee los parametros para luego editar
	
	  p.setIdadmEntity(idadmint); 
	  
	  Cliente c = new Cliente();
	  c.setIdCli(rutpagoint);
	  p.setCliente(c);
	  p.setPagofechaEntity(fechapagoTxt); 
	  p.setPagomesEntity(mespagoTxt);
	  p.setPagoanoEntity(anopagoTxt); 
	  p.setPagomontoEntity(pagomontoint);
	  
	  ps.create(p);
	  
	  
	  return "redirect:/listadopago"; }
	 
      }
