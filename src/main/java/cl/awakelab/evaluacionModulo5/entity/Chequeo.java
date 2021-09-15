package cl.awakelab.evaluacionModulo5.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name ="chequeo")
public class Chequeo {

	@Id
	@Column(name="id_chequeo")
	private int idchequeoEntity;
		
	@ManyToOne
	@JoinColumn(name="visita_id_visita")
	private Visitas visitas;
	
	@Column(name="chequeo_estadoCumple")
	private int chequeoestadoEntity;
	
	@Column(name="chequeo_comentario")
	private String chequeocomEntity;

	@ManyToOne
	@JoinColumn(name="profesional_idpro")
	private Profesional profesional;

	public Chequeo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Chequeo(int idchequeoEntity, Visitas visitas, int chequeoestadoEntity, String chequeocomEntity,
			Profesional profesional) {
		super();
		this.idchequeoEntity = idchequeoEntity;
		this.visitas = visitas;
		this.chequeoestadoEntity = chequeoestadoEntity;
		this.chequeocomEntity = chequeocomEntity;
		this.profesional = profesional;
	}

	public int getIdchequeoEntity() {
		return idchequeoEntity;
	}

	public void setIdchequeoEntity(int idchequeoEntity) {
		this.idchequeoEntity = idchequeoEntity;
	}

	public Visitas getVisitas() {
		return visitas;
	}

	public void setVisitas(Visitas visitas) {
		this.visitas = visitas;
	}

	public int getChequeoestadoEntity() {
		return chequeoestadoEntity;
	}

	public void setChequeoestadoEntity(int chequeoestadoEntity) {
		this.chequeoestadoEntity = chequeoestadoEntity;
	}

	public String getChequeocomEntity() {
		return chequeocomEntity;
	}

	public void setChequeocomEntity(String chequeocomEntity) {
		this.chequeocomEntity = chequeocomEntity;
	}

	public Profesional getProfesional() {
		return profesional;
	}

	public void setProfesional(Profesional profesional) {
		this.profesional = profesional;
	}

	
	
}
