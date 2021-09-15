package cl.awakelab.evaluacionModulo5.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name ="visitas")
public class Visitas {
	
	@Id
	@Column(name="id_visita")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="visitas_seq")
    @SequenceGenerator(name= "visitas_seq",allocationSize =1)
	private int idvisitaEntity;	
		
	@Column(name="vis_fecha")
	private String visfechaEntity;
	
	@Column(name="vis_hora")
	private String vishoraEntity;
	
	@Column(name="vis_lugar")
	private String vislugarEntity;
	
	@ManyToOne
	@JoinColumn(name="cliente_rutCli")
	private Cliente cliente;
	
	@ManyToOne
	@JoinColumn(name="profesional_idpro")
	private Profesional profesional;

	public Visitas() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Visitas(int idvisitaEntity, String visfechaEntity, String vishoraEntity, String vislugarEntity,
			Cliente cliente, Profesional profesional) {
		super();
		this.idvisitaEntity = idvisitaEntity;
		this.visfechaEntity = visfechaEntity;
		this.vishoraEntity = vishoraEntity;
		this.vislugarEntity = vislugarEntity;
		this.cliente = cliente;
		this.profesional = profesional;
	}

	public int getIdvisitaEntity() {
		return idvisitaEntity;
	}

	public void setIdvisitaEntity(int idvisitaEntity) {
		this.idvisitaEntity = idvisitaEntity;
	}

	public String getVisfechaEntity() {
		return visfechaEntity;
	}

	public void setVisfechaEntity(String visfechaEntity) {
		this.visfechaEntity = visfechaEntity;
	}

	public String getVishoraEntity() {
		return vishoraEntity;
	}

	public void setVishoraEntity(String vishoraEntity) {
		this.vishoraEntity = vishoraEntity;
	}

	public String getVislugarEntity() {
		return vislugarEntity;
	}

	public void setVislugarEntity(String vislugarEntity) {
		this.vislugarEntity = vislugarEntity;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Profesional getProfesional() {
		return profesional;
	}

	public void setProfesional(Profesional profesional) {
		this.profesional = profesional;
	}
	

	
}
