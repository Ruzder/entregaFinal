package cl.awakelab.evaluacionModulo5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.evaluacionModulo5.entity.Pago;
import cl.awakelab.evaluacionModulo5.repository.PagoRepository;



@Service
public class PagoServiceIMPL implements IPagoService {

	
	 @Autowired PagoRepository pr;
	 
	 @Override 
	 public List<Pago> readAll() {
		 // TODO Auto-generated method
		 return pr.findAll(); }
	 
	 @Override public void create(Pago p) { 
		 // TODO Auto-generated method
	  pr.save(p); 
	 }
	 
	
}
