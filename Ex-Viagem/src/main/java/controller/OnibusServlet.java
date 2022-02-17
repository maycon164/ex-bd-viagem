package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViagemDao;
import model.OnibusDescricao;
import persistence.GenericDao;

@WebServlet("/onibusdesc")
public class OnibusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OnibusServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Entrou no Servlet!!!!");
		String idParam = request.getParameter("codigo");
		int id = Integer.parseInt(idParam);

		ViagemDao vd = new ViagemDao(new GenericDao());

		try {

			OnibusDescricao onibusDescricao = vd.getOnibusDescricao(id);
			RequestDispatcher rd = request.getRequestDispatcher("onibus.jsp");
			request.setAttribute("onibusDesc", onibusDescricao);
			rd.forward(request, response);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
