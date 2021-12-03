package conexion.salmantino.es;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConectarCRUD
 */
@WebServlet("/ConectarCRUD")
public class ConectarCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConectarCRUD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String jdbcUrl="jdbc:mysql://localhost:3306/gestionPedidosBD?serverTimezone=UTC";
		String usuario="root";
		String contra= "Adivinala1.";
		String driver= "com.mysql.cj.jdbc.Driver"; //la 8
		PrintWriter out=response.getWriter();
		out.print("Nombre de la bbdd: "+jdbcUrl+" <br> <hr>");
		try {
			Class.forName(driver);
			try {
				Connection miConexion = DriverManager.getConnection(jdbcUrl,usuario,contra);
				out.print("Conectado**");
				miConexion.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
