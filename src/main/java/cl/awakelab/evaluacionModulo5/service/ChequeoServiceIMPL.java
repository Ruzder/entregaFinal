package cl.awakelab.evaluacionModulo5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.evaluacionModulo5.entity.Chequeo;
import cl.awakelab.evaluacionModulo5.repository.ChequeoRepository;


@Service
public class ChequeoServiceIMPL implements IChequeoService{
	@Autowired ChequeoRepository chr;
	 
	 @Override 
	 public List<Chequeo> readAll() {
		 // TODO Auto-generated method
	 
		 return chr.findAll(); }
	 
}
