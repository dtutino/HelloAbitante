<%@page import="it.helloabitante.model.Abitante"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Dettaglio</title>

<style type="text/css">

	table, th, td {
	  border: 1px solid black;
	}
	
	th, td {
	  padding: 10px;
	}
	.center {
		margin-left: auto;
		margin-right: auto;
	}

</style>

</head>
<body>

<% Abitante abitanteDaServlet = (Abitante)request.getAttribute("abitanteDaInviareAPaginaDettalio"); %>

<h1>Dettaglio dell'abitante con id: <%=abitanteDaServlet.getIdAbitante() %></h1>

<p>Nome: <%=abitanteDaServlet.getNome() %><p>

<p>Cognome: <%=abitanteDaServlet.getCognome() %><p>

<p>Codice fiscale: <%=abitanteDaServlet.getCodiceFiscale() %><p>

<p>Età: <%=abitanteDaServlet.getEta() %><p>

<p>Motto di vita: <%=abitanteDaServlet.getMottoDiVita() %><p>

</body>
</html>