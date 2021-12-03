package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.Pedidos;

@Repository
public class PedidosDAOClase implements PedidosDAO{

	@Transactional
	public List<Pedidos> getPedidos() {
		Session miSession = sessionFactory.getCurrentSession();
		Query<Pedidos> miQuery=miSession.createQuery("from Pedidos",Pedidos.class);
		List<Pedidos> pedidos= miQuery.getResultList();
		return pedidos;
	}

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void insertarPedidos(Pedidos elPedidos) {
		Session miSession= sessionFactory.getCurrentSession();
		miSession.saveOrUpdate(elPedidos);
	}

	@Override
	@Transactional
	public Pedidos getPedidos(int id) {
		Session miSession = sessionFactory.getCurrentSession();
		Pedidos elPedidos = miSession.get(Pedidos.class, id);
		return elPedidos;
	}

	@Override
	public void eliminarPedidos(int id) {
		Session miSession = sessionFactory.getCurrentSession();
		Query consulta=miSession.createQuery("delete from Cliente where id=:IdDelPedido");
		consulta.setParameter("IdDelPedido", id);
		consulta.executeUpdate();
	}


	
}
