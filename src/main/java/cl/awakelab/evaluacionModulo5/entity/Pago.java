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
@Table(name ="pago")
public class Pago {
	// atributos de la clase

	@Id
	@Column(name="id_Pago")
    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="pago_seq")
    @SequenceGenerator(name= "pago_seq",allocationSize =1)
	private int idpagoEntity;
	
	@Column(name="pago_idadm")
	private int idadmEntity;
	
	@ManyToOne
	@JoinColumn(name="cliente_rutCli")
	private Cliente cliente;
	
	@Column(name="pago_fecha")
	private String pagofechaEntity;
	
	@Column(name="pago_mes")
	private String pagomesEntity;
	
	@Column(name="pago_ano")
	private String pagoanoEntity;

	@Column(name="pago_monto")
	private int pagomontoEntity;

	public Pago() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pago(int idpagoEntity, int idadmEntity, Cliente cliente, String pagofechaEntity, String pagomesEntity,
			String pagoanoEntity, int pagomontoEntity) {
		super();
		this.idpagoEntity = idpagoEntity;
		this.idadmEntity = idadmEntity;
		this.cliente = cliente;
		this.pagofechaEntity = pagofechaEntity;
		this.pagomesEntity = pagomesEntity;
		this.pagoanoEntity = pagoanoEntity;
		this.pagomontoEntity = pagomontoEntity;
	}

	public int getIdpagoEntity() {
		return idpagoEntity;
	}

	public void setIdpagoEntity(int idpagoEntity) {
		this.idpagoEntity = idpagoEntity;
	}

	public int getIdadmEntity() {
		return idadmEntity;
	}

	public void setIdadmEntity(int idadmEntity) {
		this.idadmEntity = idadmEntity;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public String getPagofechaEntity() {
		return pagofechaEntity;
	}

	public void setPagofechaEntity(String pagofechaEntity) {
		this.pagofechaEntity = pagofechaEntity;
	}

	public String getPagomesEntity() {
		return pagomesEntity;
	}

	public void setPagomesEntity(String pagomesEntity) {
		this.pagomesEntity = pagomesEntity;
	}

	public String getPagoanoEntity() {
		return pagoanoEntity;
	}

	public void setPagoanoEntity(String pagoanoEntity) {
		this.pagoanoEntity = pagoanoEntity;
	}

	public int getPagomontoEntity() {
		return pagomontoEntity;
	}

	public void setPagomontoEntity(int pagomontoEntity) {
		this.pagomontoEntity = pagomontoEntity;
	}
	

	
	
}
