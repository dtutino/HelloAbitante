<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina inserimento</title>
</head>
<body>

<% if(request.getAttribute("messaggioDiErrore") != null){ %>
		<p style="color: red;"><%=request.getAttribute("messaggioDiErrore") %></p>
	<%  }else{ %>
		Inserire dati:<br>
	<%}    %>
	<form action="InserisciServlet" method="post">
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
		<input type="submit" value="INSERISCI">
	
	</form>

</body>
</html>