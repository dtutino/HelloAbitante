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

@WebServlet("/InserisciServlet")
public class InserisciServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InserisciServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destinazione = null;
		
		String nomeDaPagina = request.getParameter("nomeInput");
		String cognomeDaPagina = request.getParameter("cognomeInput");
		String codiceFiscaleDaPagina = request.getParameter("codiceFiscaleInput");
		String etaDaPagina = request.getParameter("etaInput");
		int etaDaInserire = Integer.parseInt(etaDaPagina);		
		String mottoDaPagina = request.getParameter("mottoInput");
		Integer id = DB_Mock.LISTA_ABITANTI.size() + 1;
		Long idDaInserire = id.longValue();
		
		if (nomeDaPagina.equals("") && cognomeDaPagina.equals("") && codiceFiscaleDaPagina.equals("")
				&& etaDaPagina.equals("") && mottoDaPagina.equals("")) {
			String messaggioDaInviareAPagina = "Attenzione! E' necessario valorizzare tutti i campi.";
			request.setAttribute("messaggioDiErrore", messaggioDaInviareAPagina);
			destinazione = "paginaInserimento.jsp";
		} else {
			Abitante abitanteDaInserire = new Abitante(idDaInserire, nomeDaPagina, cognomeDaPagina, codiceFiscaleDaPagina, etaDaInserire, mottoDaPagina);
			
			MyServiceFactory.getAbitanteServiceInstance().insert(abitanteDaInserire);
			request.setAttribute("abitanteInserito", abitanteDaInserire);
			
			
			request.setAttribute("listAbitantiAttributeName",
					MyServiceFactory.getAbitanteServiceInstance().list());
			
			destinazione = "results.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(destinazione);
			rd.forward(request, response);
		}
	}

}
