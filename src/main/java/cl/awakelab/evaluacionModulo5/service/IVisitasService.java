package cl.awakelab.evaluacionModulo5.service;

import java.util.List;

import cl.awakelab.evaluacionModulo5.entity.Visitas;

public interface IVisitasService {

	public List<Visitas> readAll();
	public void create(Visitas v);
	
}
