package cl.awakalab.evaluacionModulo5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.evaluacionModulo5.entity.Chequeo;
import cl.awakelab.evaluacionModulo5.service.ChequeoServiceIMPL;









@Controller
public class ChequeoController {

	@Autowired
	private ChequeoServiceIMPL chs; // chs = chequeo service

	
	@RequestMapping(value="/listadochequeo", method = RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Chequeo> lista = chs.readAll();
		ModelAndView mv = new ModelAndView("listadochequeo");
		mv.addObject("lista", lista);
		return mv;
	}
	
}
