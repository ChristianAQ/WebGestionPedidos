package salmantino.es.controlador.entity;
import javax.persistence.*;

@Entity
@Table(name="pedidos", schema="GestionPedidosBD")
public class Pedidos {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idPedido")
	private int idPedido;
	
	@Column(name="numpedido")
	private String numpedido;
	
	@Column(name="fecha")
	private String fecha;
	
	@Column(name="importe")
	private float importe;
	
	@Column(name="descuento")
	private float descuento;

	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idCliente")
	private int idCliente;
	
	public Pedidos(){
		
	}

	public int getIdPedido() {
		return idPedido;
	}
	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}
	public String getNumpedido() {
		return numpedido;
	}
	public void setNumpedido(String numpedido) {
		this.numpedido = numpedido;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public float getImporte() {
		return importe;
	}
	public void setImporte(float importe) {
		this.importe = importe;
	}
	public float getDescuento() {
		return descuento;
	}
	public void setDescuento(float descuento) {
		this.descuento = descuento;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	
	@Override
	public String toString() {
		return "Pedidos [idPedido=" + idPedido + ", numpedido=" + numpedido
				+ ", fecha=" + fecha + ", importe=" + importe + ", descuento="
				+ descuento + ", idCliente=" + idCliente + "]";
	}
	
	
	
}
