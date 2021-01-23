package it.helloabitante.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.helloabitante.dao.DB_Mock;
import it.helloabitante.model.Abitante;
import it.helloabitante.service.MyServiceFactory;

@WebServlet("/ConfermaModifica")
public class ConfermaModifica extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConfermaModifica() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String destinazione = null;

		String parametroIdDellAbitanteCheVoglioModificare = request.getParameter("idDaInviareComeParametro");
		Long idInput = Long.parseLong(parametroIdDellAbitanteCheVoglioModificare);

		String nomeDaPagina = request.getParameter("nomeInput");
		String cognomeDaPagina = request.getParameter("cognomeInput");
		String codiceFiscaleDaPagina = request.getParameter("codiceFiscaleInput");
		String etaDaPagina = request.getParameter("etaInput");
		int etaDaInserire = Integer.parseInt(etaDaPagina);
		String mottoDaPagina = request.getParameter("mottoInput");
		
		Abitante abitanteDaModificare = new Abitante(idInput, nomeDaPagina, cognomeDaPagina, codiceFiscaleDaPagina, etaDaInserire, mottoDaPagina);
		
		MyServiceFactory.getAbitanteServiceInstance().update(abitanteDaModificare);
		request.setAttribute("abitanteModificato", abitanteDaModificare);
		
		request.setAttribute("listAbitantiAttributeName",
				MyServiceFactory.getAbitanteServiceInstance().list());
		
		destinazione = "results.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(destinazione);
		rd.forward(request, response);
	}

}
