<%@page import="it.helloabitante.dao.MyDaoFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="it.helloabitante.model.Abitante"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>Pagina dei risultati</title>

</head>
<body>
		
		<% if(request.getAttribute("messaggioDiConfermaModifica") != null){ %>
		<p style="color: red;"><%=request.getAttribute("messaggioDiConfermaModifica") %></p>
	<%  }else{ %>
 	<%}    %> 
	
	</table>
	
	<div class="container">
	<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Nome</th>
      <th scope="col">Cognome</th>
      <th scope="col">Azioni</th>
      <th scope="col"><a class="btn btn-success" href="paginaInserimento.jsp" role="button">Nuovo</a></th>
    </tr>
  </thead>
  <tbody>
		<% List<Abitante> listaDaServlet = new ArrayList<Abitante>();
		if (request.getAttribute("listAbitantiAttributeName") != null) {
				listaDaServlet = (List<Abitante>)request.getAttribute("listAbitantiAttributeName");
		} else {
			listaDaServlet = (List<Abitante>)MyDaoFactory.getAbitanteDAOInstance().list();
		}
							for(Abitante abitanteItem : listaDaServlet){
				%>
				<tr>
					<td><%=abitanteItem.getNome() %></td>
					<td><%=abitanteItem.getCognome() %></td>
					<td>
						<a class="btn btn-success" href="VisualizzaDettaglioServlet?idDaInviareComeParametro=<%=abitanteItem.getIdAbitante() %>" role="button">Dettaglio</a>
						<a class="btn btn-primary" href="PreparaModificaServlet?idDaInviareComeParametro=<%=abitanteItem.getIdAbitante() %>" role="button">Modifica</a>
						<a class="btn btn-danger" href="PreparaRimozioneServlet?idDaInviareComeParametro=<%=abitanteItem.getIdAbitante() %>" role="button">Elimina</a>
					</td>
				</tr>
		<%	}%>
  </tbody>
</table>
	</div>
</body>
</html>