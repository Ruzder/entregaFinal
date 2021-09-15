package cl.awakalab.evaluacionModulo5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.evaluacionModulo5.entity.Cliente;
import cl.awakelab.evaluacionModulo5.entity.Usuario;
import cl.awakelab.evaluacionModulo5.service.ClienteServiceIMPL;
import cl.awakelab.evaluacionModulo5.service.UsuarioServiceIMPL;

@Controller
public class ClienteController {
	
	@Autowired
	private UsuarioServiceIMPL us;
	@Autowired
	private ClienteServiceIMPL cs;
	
	@RequestMapping(value="/editarCliente/{idCli}", method=RequestMethod.GET)
	public ModelAndView verEditar(@PathVariable("idCli") int idCli) {
	ModelAndView mv = new ModelAndView("editarCliente");
	Cliente c = cs.readOneFk(idCli);
	mv.addObject("c", c);
	return mv;
	}
	
	@RequestMapping(value="/editarCliente/{idCli}", method=RequestMethod.POST)
	public ModelAndView GuardarEditar(@PathVariable("idCli") int idCli, @RequestParam("dirTxt") String dirTxt, @RequestParam("comTxt") String comTxt,
			@RequestParam("canTxt")	 int canTxt, @RequestParam("telTxt") String telTxt, @RequestParam("razPTxt") String razPTxt) {
		ModelAndView mv = new ModelAndView("listarUsuario");
		Cliente c = cs.readOne(idCli);
		c.setIdCli(c.getIdCli());
		c.setDirCli(dirTxt);
		c.setComCli(comTxt);
		c.setCanCli(canTxt);
		c.setTelCli(telTxt);
		c.setRazCli(razPTxt);
		cs.update(c);
		
		List<Usuario> lista = us.readAll();
		mv.addObject("lista", lista);
		
		return mv;
	}
	
	@RequestMapping(value = "/crearClienteUsuario", method = RequestMethod.GET)
	public String verCrearCliente(Model model) {
		return "crearClienteUsuario";
	}
	@RequestMapping(value = "/crearClienteUsuario", method = RequestMethod.POST)
	public String guardarCrearCliente(Model model, @RequestParam ("idTxt") int idTxt, @RequestParam ("nomTxt") String nomTxt,
			@RequestParam ("apeTxt") String apeTxt, @RequestParam ("fecTxt") String fecTxt, @RequestParam ("tipInt") int tipInt,
			@RequestParam ("rutInt") int rutInt, @RequestParam ("dirTxt") String dirTxt, @RequestParam ("comTxt") String comTxt,
			@RequestParam ("canInt") int canInt, @RequestParam ("telTxt") String telTxt, @RequestParam ("razTxt") String razTxt) {
		
		
		Usuario u = new Usuario();
		u.setId(idTxt);
		u.setNom(nomTxt);
		u.setApe(apeTxt);
		u.setFec(fecTxt);
		u.setTip(tipInt);
		us.create(u);
	
		Cliente c = new Cliente();
		c.setUsuario(u);
		c.setIdCli(rutInt);
		c.setDirCli(dirTxt);
		c.setComCli(comTxt);
		c.setCanCli(canInt);
		c.setTelCli(telTxt);
		c.setRazCli(razTxt);
		cs.create(c);
		return "redirect:/listarUsuario";
		
	}
	
	
	
	
}
