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

<title>Dettaglio</title>

</head>
<body>

<% Abitante abitanteDaServlet = (Abitante)request.getAttribute("abitanteDaInviareAPaginaDettalio"); %>

<div class="container">
<ul class="list-group">
<h1>Dettaglio dell'abitante con id: <%=abitanteDaServlet.getIdAbitante() %></h1>
  <li class="list-group-item"><p>Nome: <%=abitanteDaServlet.getNome() %><p></li>
  <li class="list-group-item"><p>Cognome: <%=abitanteDaServlet.getCognome() %><p></li>
  <li class="list-group-item"><p>Codice fiscale: <%=abitanteDaServlet.getCodiceFiscale() %><p></li>
  <li class="list-group-item"><p>Età: <%=abitanteDaServlet.getEta() %><p></li>
  <li class="list-group-item"><p>Motto di vita: <%=abitanteDaServlet.getMottoDiVita() %><p></li>
  <a class="btn btn-danger" href="results.jsp" role="button">Indietro</a>
</ul>
</div>

</body>
</html>