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

<title>Insert title here</title>
</head>
<body>

<% Abitante abitanteDaServlet = (Abitante)request.getAttribute("abitanteDaInviareAPaginaModifica"); %>

<div class="container">
<h3>Modifica dell'abitante con id: <%=abitanteDaServlet.getIdAbitante() %></h3>
<form action="ConfermaModifica?idDaInviareComeParametro=<%=abitanteDaServlet.getIdAbitante() %>" method="post">
			<div class="form-group">
				<label for="nomeInputId">NOME:</label> <input type="text"
					class="form-control" id="nomeInputId" value="<%=abitanteDaServlet.getNome() %>"
					name="nomeInput">
			</div>
			<div class="form-group">
				<label for="cognomeInputId">COGNOME:</label> <input type="text"
					class="form-control" id="cognomeInputId"
					value="<%=abitanteDaServlet.getCognome() %>" name="cognomeInput">
			</div>
			<div class="form-group">
				<label for="codiceFiscaleInputId">CODICE fISCALE:</label> <input type="text"
					class="form-control" id="codiceFiscaleInputId" value="<%=abitanteDaServlet.getCodiceFiscale() %>"
					name="codiceFiscaleInput">
			</div>
			<div class="form-group">
				<label for="etaInputId">ETA:</label> <input type="text"
					class="form-control" id="etaInputId" value="<%=abitanteDaServlet.getEta() %>"
					name="etaInput">
			</div>
			<div class="form-group">
				<label for="mottoInputId">MOTTO:</label> <input type="text"
					class="form-control" id="mottoInputId" value="<%=abitanteDaServlet.getMottoDiVita() %>"
					name="mottoInput">
			</div>
			<button type="submit" class="btn btn-primary">MODIFICA</button>
		</form>
	</div>
	
</body>
</html>