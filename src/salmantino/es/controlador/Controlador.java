package salmantino.es.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import salmantino.es.controlador.entity.Cliente;
import salmantino.es.controlador.entity.Pedidos;
import salmantino.es.dao.ClienteDAO;
import salmantino.es.dao.PedidosDAO;

@Controller
@RequestMapping("/cliente")
public class Controlador {
	
	@RequestMapping("/lista")
	public String listaClientes(Model elModelo){
		List<Cliente> losClientes=clienteDAO.getClientes();
		elModelo.addAttribute("clientes",losClientes);
		return "lista-clientes";
	}
	
	@RequestMapping("/pedidos")
	public String listaPedidos(Model elModelo){
		List<Pedidos> losPedidos=pedidosDAO.getPedidos();
		elModelo.addAttribute("pedidos",losPedidos);
		return "lista-pedidos";
	}
	
	@RequestMapping("/muestraFormularioAgregar") //la uri del <input type>
	public String muestraFormularioAgregar(Model elModelo){
		Cliente elCliente = new Cliente();
		elModelo.addAttribute("cliente", elCliente);
		return "formularioCliente";
	}
	
	@PostMapping("/insertarCliente")
	public String insetarCliente(@ModelAttribute("cliente") Cliente elCliente){ //le pasamos el atributo 
		clienteDAO.insertarCliente(elCliente);
		return "redirect:/cliente/lista";
	}
	
	@GetMapping("/muestraFormularioActualizar")
	public String muestraFormularioActualizar(@RequestParam("clienteId") int Id, Model elModelo){
		Cliente elCliente = clienteDAO.getCliente(Id);
		elModelo.addAttribute("cliente", elCliente);
		return "formularioCliente";
	}
	
	@RequestMapping("/muestraFormularioAgregarPedidos") //la uri del <input type>
	public String muestraFormularioAgregarPedidos(Model elModelo){
		Pedidos elPedidos = new Pedidos();
		elModelo.addAttribute("cliente", elPedidos);
		return "formularioCliente";
	}
	
	
	@GetMapping("/eliminar")
	public String eliminarCliente(@RequestParam("clienteId") int Id){
		clienteDAO.eliminarCliente(Id);
		return "redirect:/cliente/lista";
	}
	
	@Autowired
	private ClienteDAO clienteDAO;
	@Autowired
	private PedidosDAO pedidosDAO;
}
