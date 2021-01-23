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
import it.helloabitante.service.abitante.AbitanteService;


@WebServlet("/PreparaRimozioneServlet")
public class PreparaRimozioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PreparaRimozioneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destinazione = null;
		
		String parametroIdDellAbitanteCheVoglioEliminare = request.getParameter("idDaInviareComeParametro");
				
		AbitanteService abitanteServiceInstance = MyServiceFactory.getAbitanteServiceInstance();
			
		
	    Abitante result = abitanteServiceInstance.get(Long.parseLong(parametroIdDellAbitanteCheVoglioEliminare));
		request.setAttribute("abitanteDaInviareAPaginaRimozione", result);
		
		
		destinazione = "rimozione.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(destinazione);
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
