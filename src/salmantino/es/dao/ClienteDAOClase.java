package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.Cliente;

@Repository
public class ClienteDAOClase implements ClienteDAO{

	
	@Transactional
	public List<Cliente> getClientes() {
		Session miSession = sessionFactory.getCurrentSession();
		Query<Cliente> miQuery=miSession.createQuery("from Cliente",Cliente.class);
		List<Cliente> clientes= miQuery.getResultList();
		return clientes;
	}

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void insertarCliente(Cliente elCliente) {
		Session miSession= sessionFactory.getCurrentSession();
		miSession.saveOrUpdate(elCliente);
	}

	@Override
	@Transactional
	public Cliente getCliente(int id) {
		Session miSession = sessionFactory.getCurrentSession();
		Cliente elCliente = miSession.get(Cliente.class, id);
		return elCliente;
	}

	@Override
	@Transactional
	public void eliminarCliente(int id) {
		Session miSession = sessionFactory.getCurrentSession();
		Query consulta=miSession.createQuery("delete from Cliente where id=:IdDelCliente");
		consulta.setParameter("IdDelCliente", id);
		consulta.executeUpdate();
	}

}
