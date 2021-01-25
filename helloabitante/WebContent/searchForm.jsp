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
<title>Ricerca abitante</title>
</head>
<body>

	<div class="container">
		<%
			if (request.getAttribute("messaggioDiErrore") != null) {
		%>
		<div aria-live="polite" aria-atomic="true"
			class="d-flex justify-content-center align-items-center"
			style="min-height: 200px;">
			<div class="toast" role="alert" aria-live="assertive"
				aria-atomic="true">
				<div class="toast-body"><p style="color: red;"><%=request.getAttribute("messaggioDiErrore")%></p>
				</div>
			</div>
		</div>
		<%
			} else {
		%>
		<h4>Inserire dati da ricercare</h4>
		<br>
		<%
			}
		%>
		<form action="SearchServlet" method="post">
			<div class="form-group">
				<label for="nomeInputId">NOME:</label> <input type="text"
					class="form-control" id="nomeInputId" placeholder="Inserisci nome"
					name="nomeInput">
			</div>
			<div class="form-group">
				<label for="cognomeInputId">COGNOME:</label> <input type="text"
					class="form-control" id="cognomeInputId"
					placeholder="Inserisci cognome" name="cognomeInput">
			</div>
			<button type="submit" class="btn btn-primary">CERCA</button>
		</form>
	</div>
</body>
</html>