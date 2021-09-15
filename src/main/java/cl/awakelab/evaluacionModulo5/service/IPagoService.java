package cl.awakelab.evaluacionModulo5.service;

import java.util.List;


import cl.awakelab.evaluacionModulo5.entity.Pago;

public interface IPagoService {

	public List<Pago> readAll();
	public void create(Pago p);
}
