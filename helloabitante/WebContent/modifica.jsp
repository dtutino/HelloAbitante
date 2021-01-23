<%@page import="it.helloabitante.model.Abitante"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Abitante abitanteDaServlet = (Abitante)request.getAttribute("abitanteDaInviareAPaginaModifica"); %>

<h1>Modifica dell'abitante con id: <%=abitanteDaServlet.getIdAbitante() %></h1>

<form action="ConfermaModifica?idDaInviareComeParametro=<%=abitanteDaServlet.getIdAbitante() %>" method="post">
<label for="nomeInputId">NOME:</label><br>
		<input type="text" name="nomeInput" id="nomeInputId">
		<br>
		<label for="cognomeInputId">COGNOME:</label><br>
		<input type="text" name="cognomeInput" id="cognomeInputId">
		<br>
		<label for="cognomeInputId">CODICE FISCALE:</label><br>
		<input type="text" name="codiceFiscaleInput" id="codiceFiscaleInputId">
		<br>
		<label for="cognomeInputId">ETA:</label><br>
		<input type="text" name="etaInput" id="etaInputId">
		<br>
		<label for="cognomeInputId">MOTTO:</label><br>
		<input type="text" name="mottoInput" id="mottoInputId">
		<br>
<input type="submit" value="Modifica">
</form>
</body>
</html>