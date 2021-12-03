package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.Pedidos;


public interface PedidosDAO {
	
	public List<Pedidos> getPedidos();
	public void insertarPedidos(Pedidos elPedidos);
	public Pedidos getPedidos(int id);
	public void eliminarPedidos(int id);
}
