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

<title>Pagina inserimento</title>
</head>
<body>


	<div class="container">
		<% if(request.getAttribute("messaggioDiErrore") != null){ %>
		<p style="color: red;"><%=request.getAttribute("messaggioDiErrore") %></p>
		<%  }else{ %>
		Inserire dati:<br>
		<%}    %>

		<form action="InserisciServlet" method="post">
			<div class="form-group">
				<label for="nomeInputId">NOME:</label> <input type="text"
					class="form-control" id="nomeInputId" name="nomeInput">
			</div>
			<div class="form-group">
				<label for="cognomeInputId">COGNOME:</label> <input type="text"
					class="form-control" id="cognomeInputId" name="cognomeInput">
			</div>
			<div class="form-group">
				<label for="codiceFiscaleInputId">CODICE fISCALE:</label> <input
					type="text" class="form-control" id="codiceFiscaleInputId"
					name="codiceFiscaleInput">
			</div>
			<div class="form-group">
				<label for="etaInputId">ETA:</label> <input type="text"
					class="form-control" id="etaInputId" name="etaInput">
			</div>
			<div class="form-group">
				<label for="mottoInputId">MOTTO:</label> <input type="text"
					class="form-control" id="mottoInputId" name="mottoInput">
			</div>
			<button type="submit" class="btn btn-primary">INSERISCI</button>
		</form>
	</div>

</body>
</html>