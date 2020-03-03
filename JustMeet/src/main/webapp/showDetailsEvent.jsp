<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<title>JUST MEET</title>
</head>
<body id="page-top">

	<%@include file="assets/header.html"%>
	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="form-group">
					<form:form method="GET" modelAttribute="showDetails"
						class="form-signin">
						<h2 class="form-signin">Dettagli evento:</h2>
						<label>Titolo Evento</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Titolo: ${event.titolo}</form>
						</div>

						<label>Categoria</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Categoria: ${event.categoria}</form>
						</div>
						<label>Data Evento</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">DataEvento: ${event.dataEvento}</form>
						</div>

						<label>Prezzo</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Prezzo: ${event.prezzo}</form>
						</div>


						<label>Data Scadenza Pagamento</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Data scadenza pagamento:
								${event.scadenzaPagamento}</form>
						</div>

						<label>Cauzione</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Cauzione: ${event.cauzione}</form>
						</div>

						<label>Quantità cauzione</label>
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form method="GET">Quantità cauzione: ${event.qtaCauzione}</form>
						</div>

						<button onclick="addRequest.jsp">Unisciti</button>
					</form:form>
				</div>
			</div>
		</div>
	</header>
	<%@include file="assets/footer.html"%>
</body>
</html>