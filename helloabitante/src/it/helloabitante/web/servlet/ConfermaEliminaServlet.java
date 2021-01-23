package it.helloabitante.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.helloabitante.model.Abitante;
import it.helloabitante.service.MyServiceFactory;

@WebServlet("/ConfermaEliminaServlet")
public class ConfermaEliminaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ConfermaEliminaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destinazione = null;
		
		String parametroIdDellAbitanteCheVoglioEliminare = request.getParameter("idDaInviareComeParametro");
		
		Long idInput = Long.parseLong(parametroIdDellAbitanteCheVoglioEliminare);
		
		Abitante abitanteDaEliminare = MyServiceFactory.getAbitanteServiceInstance().get(idInput);
		
		MyServiceFactory.getAbitanteServiceInstance().delete(abitanteDaEliminare);
		
		String messaggioDaInviareAPagina = "L'abitante è stato eliminato correttamente!";
		
		request.setAttribute("messaggioDiConfermaEliminazione", messaggioDaInviareAPagina);
		
		request.setAttribute("listAbitantiAttributeName", MyServiceFactory.getAbitanteServiceInstance().list());
		
		destinazione = "results.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(destinazione);
		rd.forward(request, response);
		
		
	}

}
