package cl.awakelab.evaluacionModulo5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.evaluacionModulo5.entity.Visitas;
import cl.awakelab.evaluacionModulo5.repository.VisitasRepository;



@Service
public class VisitasServiceIMPL implements IVisitasService{

	@Autowired
	VisitasRepository vr;
	
	@Override
	public List<Visitas> readAll() {
		// TODO Auto-generated method stub
		return vr.findAll();
	}

	@Override
	public void create(Visitas v) {
		// TODO Auto-generated method stub
		vr.save(v);
	}
}
