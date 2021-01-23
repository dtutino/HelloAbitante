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
<% Abitante abitanteDaServlet = (Abitante)request.getAttribute("abitanteDaInviareAPaginaRimozione"); %>

<h1>Sei sicuro che vuoi eliminare l'abitante con id: <%=abitanteDaServlet.getIdAbitante() %></h1>

<form action="ConfermaEliminaServlet?idDaInviareComeParametro=<%=abitanteDaServlet.getIdAbitante() %>" method="post">

<input type="submit" value="Elimina">
</form>

<%-- <a href="ConfermaEliminaServlet?idDaInviareComeParametro=<%=abitanteDaServlet %>">Elimina</a> --%>
</body>
</html>